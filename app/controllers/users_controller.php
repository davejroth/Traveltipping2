<?php
class UsersController extends AppController {

	var $name = 'Users';
	
	var $uses = array('Merchant', 'Traveler', 'User');
	var $components = array('Notification');

	function sendForgotPasswordMail($user, $template) {
		$this->loadModel('PasswordReset');
		$passwordReset = $this->PasswordReset->find('first', array('conditions' => array('PasswordReset.user_id' => $user['User']['id']), 
			'order' => 'PasswordReset.created DESC'));
		$this->set(compact('passwordReset')); 
	
		$this->Notification->sendHtmlUserMail($user, $template);
	}
	
	function sendNewSubscriberMail($user, $template) {
		$this->Notification->sendHtmlUserMail($user, $template);
	
	}
	/*
	 * This is for travelers who sign up during the purchase process
	 * or for travelers who are already signed in when they come to the purchase
	 */
	function ajax_logged_in() {
		$user = $this->Session->read('Auth.User');
		
		$traveler = $this->Traveler->find('first',
			array('conditions' => array('Traveler.user_id' => $user['id'])));
			$this->set(compact('traveler'));
	//If new traveler is logging in
		if ($this->Session->read('Auth.User') && !$this->Session->read('Auth.User.role_id')) {
			$this->Session->write('Traveler.id', $traveler['Traveler']['id']);
			$this->Session->write('User.role_id', $user['role_id']);
			$this->Session->write('User.id', $user['id']);
		}
	//Traveler is already logged in
	
	$this->render('ajax_logged_in', 'ajax');
	}
/**
  * Login
  * This function is called when users login.  It writes a cookie then redirects them to the appropriate page.  If they reached
  * the login page because they were denied access to a page based on ARO, they are redirected to the page they were attempting to access.
  */  
	
	function login() {
		if($this->Auth->user()) {
			$user = $this->Session->read('Auth.User');
			$redirect = $this->Auth->redirect();
			$this->Cookie->write('email',$this->data['User']['email'], true, '3 years');
			if($this->Session->Read('Auth.User.role_id') == Configure::Read('Role.Merchant_ID')){ 
				App::import('model','Merchant');
				$merchant = new Merchant();
				$thisMerchant = $merchant->find('first',
					array('conditions' => array('Merchant.user_id' => $user['id'])));
				$this->Session->write('Merchant.id', $thisMerchant['Merchant']['id']);
				//If a merchant has live deals, take them there.  Otherwise, take them to upcoming deals.
				if($merchant->hasLiveDeals($thisMerchant['Merchant']['id'])) {
					$this->redirect(array('controller' => 'merchants', 'action' => 'my_deals', 'live'));
				}
				else{
					$this->redirect(array('controller' => 'merchants', 'action' => 'my_deals', 'upcoming'));
				}
			} 
			elseif($this->Session->Read('Auth.User.role_id') == Configure::Read('Role.Traveler_ID')){
				App::import('model','Traveler');
				$traveler = new Traveler();
				$thisTraveler = $traveler->find('first',
					array('conditions' => array('Traveler.user_id' => $user['id'])));
				$this->Session->write('Traveler.id', $thisTraveler['Traveler']['id']);
				if($this->Session->read('Traveler.ajax_login') == 1) {
					$this->Session->write('Traveler.ajax_login', 0);
					$this->redirect(array('controller' => 'users', 'action' => 'ajax_logged_in'));
				}
				//Only redirect travelers if they were on the main page or the signup page
				elseif($redirect == '/' || $redirect == 'travelers/signup') { 
					$this->redirect(array('controller' => 'travelers', 'action' => 'my_deals', 'upcoming'));
				}
			}
			$this->redirect($redirect); //If they were on a a page other than the main page or signup page, they will be redirected there
		} 
		if ($this->Session->read('Auth.User')) {
			$this->redirect('/', null, false);
		}
		elseif(!empty($this->data)) {
			$this->Session->setFlash(__('Wrong email or password. Please try again.', true),'error_flash');
		
		}
	} 

	function logout() {
		if ($this->Session->valid())
		{
		$this->Session->destroy();
		$this->redirect('/');
		}
	}
	
	function editPassword() {
		
		$id = $this->Session->read('Auth.User.id');
		if (!$id && empty($this->data)) {  //This if statement seems like it should be removed.
			$this->Session->setFlash(__('Invalid user profile', true),'error_flash');
			$this->redirect(array('action' => 'edit'));
		}
		if (!empty($this->data)) {
			$this->data['User']['id'] = $this->Session->read('Auth.User.id');
			$this->data['User']['password'] = Security::hash($this->data['User']['password'], null, true);
			$this->data['User']['role_id'] = $this->Session->read('Auth.User.role_id');
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('You succesfully changed your password', true),'success_flash');
				//If merchant, redirect to merchant profile.  If traveler, redirect to traveler)
				if($this->Session->read('Auth.User.role_id') == Configure::Read('Role.Merchant_ID')) 
				{
					$this->redirect('/merchants/profile');
				}
				if($this->Session->read('Auth.User.role_id') == Configure::Read('Role.Traveler_ID'))
				{
					$this->redirect('/travelers/profile');
				}
				//debug($this->Session->read('role_id'));
				
				
			} else {
				$this->Session->setFlash(__('Please fix the errors and try again.', true),'error_flash');
			}
		}
		if (empty($this->data)) {
			$this->data = $this->User->read(null, $id);
		}
	}

	/**
	 * resetPassword just displays a form to submit your email address for resetting your password
	 */
	function resetPassword() {
		if(!empty($this->data)) {
			$this->User->set($this->data);
			if($this->User->validates()) {
				$thisUser = $this->User->findByEmail($this->data['User']['resetEmail']);
				$random_hash = substr(md5(uniqid(rand(), true)), -10, 10);
				$newPasswordReset['PasswordReset']['user_id'] = $thisUser['User']['id'];
				$newPasswordReset['PasswordReset']['confirmation'] = $random_hash;
				$this->User->PasswordReset->create();
				$this->User->PasswordReset->save($newPasswordReset);
				$this->sendForgotPasswordMail($thisUser, 'resetPassword');
				//Create new passwordChange record and email address
				$this->redirect(array('action' => 'confirmReset', $this->data['User']['resetEmail']));
			}
			else {
				$this->Session->setFlash(__('Please fix the errors and try again.', true),'error_flash');
			}
		}
		
		
	}
	/**
	 * confirmReset receives the email address that was submitted from resetPassword and sends the email
	 */
	function confirmReset($email) {
		//Send password reset email
		$this->set(compact('email'));
	}
	
	function resendPassword($email) {
		$thisUser = $this->User->findByEmail($email);
		$this->sendForgotPasswordMail($thisUser, 'resetPassword');
		$this->redirect(array('action' => 'confirmReset', $email));
	}
	
	/**
	 * newPassword is the link users receive to reset their password.  Their confirmation is checked against
     * their user account and they enter the new password
	 * @param confirmation - The code generated when the user resets the password
	 */
	
	function newPassword($confirmation) {
		if(!empty($this->data)) {
			$thisUser = $this->User->findById($this->data['User']['id']);
			$this->data['User']['password'] = Security::hash($this->data['User']['password'], null, true);
			$this->data['User']['role_id'] = $thisUser['User']['role_id'];
			if($this->User->save($this->data)) {
				$this->Session->setFlash(__('Your password has been reset.', true),'success_flash');
				$this->redirect(array('controller' => 'users', 'action' => 'login'));
			}
			else
			{
				$this->Session->setFlash(__('Sorry, we couldn\'t save your new password.', true),'error_flash');
			}
			
		}
		if(empty($this->data)) {
			$this->loadModel('PasswordReset');
			$passwordReset = $this->PasswordReset->findByConfirmation($confirmation);
			//Or condition - The difference between 'created' and now is greater than 24 hours
			if(is_null($passwordReset) || (strtotime($passwordReset['PasswordReset']['created']) < strtotime('24 hours ago'))) { //Not the right confirmation
				$this->Session->setFlash(__('Sorry, your request has expired.  Please generate a new request.', true),'error_flash');
				$this->redirect(array('controller' => 'users', 'action' => 'resetPassword'));
			}
			else {
				$id = $passwordReset['PasswordReset']['user_id'];
				$this->data = $this->User->findById($id);
			}
		
		}
	}
	
	function admin_index() {
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user', true),'error_flash');
			$this->redirect(array('action' => 'index'));
		}
		$this->set('user', $this->User->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->User->create();
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('The user has been saved', true),'success_flash');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.', true),'error_flash');
			}
		}
		//$roles = $this->User->Role->find('list');
		//$this->set(compact('roles'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user', true),'error_flash');
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('The user has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->User->read(null, $id);
		}
		$roles = $this->User->Role->find('list');
		$this->set(compact('roles'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for user', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->User->delete($id)) {
			$this->Session->setFlash(__('User deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('User was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	function check_session() {
		$logged_in = null;
		if($this->Session->read('Auth.User')){
			
			$logged_in = array('logged_in' => true);
			
			$this->set('logged_in',json_encode($logged_in));
			
		}
		else{
			$logged_in = array('logged_in' => false);
			
			$this->set('logged_in',json_encode($logged_in));
		}
		
		$this->render('check_session','ajax');
	}
/**
 * Subscribe
 * This function is called when users enter their email address into the layover that pops up when the user has no cookie.  It checks
 * that they entered a valid email address and then stores their email address in the Subscriber table if their email has never been
 * entered before.
 */ 
	function subscribe() {
		$this->layout = 'ajax';
		if (!empty($this->data)) {
			$this->loadModel('Subscriber');
			$this->Subscriber->set($this->data);
			if($this->Subscriber->validates()) {
				$this->Subscriber->recursive = -1;
				$this->Traveler->User->recursive = -1;
				$this->Cookie->write('email',$this->data['Subscriber']['email'], true, '3 years');
				//If you can't find them in the Subscriber db and you can't find them in the User table, create a new Subscriber
				if(!$this->Subscriber->findByEmail($this->data['Subscriber']['email']) && !$this->Traveler->User->findByEmail($this->data['Subscriber']['email'])) {
					$this->Subscriber->create();
					$this->data['User']['email'] = $this->data['Subscriber']['email'];
					$this->Notification->sendHtmlUserMail($this->data, 'newSubscriber');
					$this->Subscriber->save($this->data);
				}
				$this->render('/elements/subscriber_close');  //Close the layover
			}
			else {
				$this->render('/elements/new_subscriber'); //Redirect them back to the layover so the validation errors show
			}
		}
		else {
			$this->render('elements/new_subscriber');
		}
	}
}

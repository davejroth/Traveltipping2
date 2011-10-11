<?php
class UsersController extends AppController {

	var $name = 'Users';
	
	var $uses = array('Merchant', 'Traveler', 'User');

	/*
	 *This is called when logging in
	 *Sets Session variables and redirects to appropriate login page.
	 */
	function loginredirect() {
	
	if ($this->Session->read('Auth.User') && !$this->Session->read('User.role_id')) { 
		$user = $this->Session->read('Auth.User');
		
		if($user['role_id'] == Configure::Read('Role.Merchant_ID'))
		{ 
			$merchant = $this->Merchant->find('first',
				array('conditions' => array('Merchant.user_id' => $user['id'])));
			$this->Session->write('Merchant.id', $merchant['Merchant']['id']);
			$this->Auth->loginRedirect = array('controller' => 'merchants', 'action' => 'profile');
		} 
		
		if($user['role_id'] == Configure::Read('Role.Traveler_ID'))
		{
			$traveler = $this->Traveler->find('first',
				array('conditions' => array('Traveler.user_id' => $user['id'])));
			$this->Session->write('Traveler.id', $traveler['Traveler']['id']);
		}
		$this->Session->write('User.role_id', $user['role_id']);
		$this->Session->write('User.id', $user['id']);	
		}
		
		if($this->Session->read('User.role_id') == Configure::Read('Role.Merchant_ID'))
		{
			if($this->Session->read('User.new') == 1)
			{
				$this->redirect(array('controller' => 'merchants', 'action' => 'profile'));
			}
			elseif($this->Session->read('User.purchasing') == 1) {
				$this->redirect(array('controller' => 'deals', 'action' => 'purchase'));
			}
			else {
			$this->redirect(array('controller' => 'merchants', 'action' => 'profile'));
			}
		}
		
		elseif($this->Session->read('User.role_id') == Configure::Read('Role.Traveler_ID'))
		{	if($this->Session->read('User.new') == 1)
			{
				$this->redirect(array('controller' => 'deals', 'action' => 'index'));
			}
			else 
			{
				$this->redirect(array('controller' => 'travelers', 'action' => 'profile'));
			}
		}
		elseif($this->Session->read('User.role_id') == Configure::Read('Role.Admin_ID'))
		{
			$this->redirect(array('controller' => 'deals', 'action' =>'admin_index', 'admin' => 1));
		}
	 	
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
		if ($this->Session->read('Auth.User') && !$this->Session->read('User.role_id')) {
			$this->Session->write('Traveler.id', $traveler['Traveler']['id']);
			$this->Session->write('User.role_id', $user['role_id']);
			$this->Session->write('User.id', $user['id']);
		}
	//Traveler is already logged in
	
	$this->render('ajax_logged_in', 'ajax');
	}
	
	
	function login() {
		if ($this->Session->read('Auth.User')) {
			$this->Session->setFlash('You are logged in!');
			$this->redirect('/', null, false);
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
		$id = $this->Session->read('User.id');
		if (!$id && empty($this->data)) {  //This if statement seems like it should be removed.
			$this->Session->setFlash(__('Invalid user profile', true));
			$this->redirect(array('action' => 'edit'));
		}
		if (!empty($this->data)) {
			$this->data['User']['id'] = $this->Session->read('User.id');
			$this->data['User']['password'] = Security::hash($this->data['User']['password'], null, true);
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('Your password has been saved.', true));
				//If merchant, redirect to merchant profile.  If traveler, redirect to traveler)
				if($this->Session->read('User.role_id') == Configure::Read('Role.Merchant_ID')) 
				{
					$this->redirect('/merchants/profile');
				}
				if($this->Session->read('User.role_id') == Configure::Read('Role.Traveler_ID'))
				{
					$this->redirect('/travelers/profile');
				}
				//debug($this->Session->read('role_id'));
				
				
			} else {
				$this->Session->setFlash(__('Your profile could not be saved. Please, try again.', true));
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
				//Create new passwordChange record and email address
				$this->redirect(array('action' => 'confirmReset', $this->data['User']['resetEmail']));
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
	
/*
function beforeFilter() {
    parent::beforeFilter(); 
    $this->Auth->allow(array('*'));
}
*/
	
	function index() {
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('user', $this->User->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->User->create();
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('The user has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
			}
		}
		$roles = $this->User->Role->find('list');
		$this->set(compact('roles'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user', true));
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

	function delete($id = null) {
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
	function admin_index() {
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('user', $this->User->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->User->create();
			if ($this->User->save($this->data)) {
				$this->Session->setFlash(__('The user has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
			}
		}
		//$roles = $this->User->Role->find('list');
		//$this->set(compact('roles'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user', true));
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
}

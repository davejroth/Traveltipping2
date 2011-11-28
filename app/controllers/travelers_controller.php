<?php
class TravelersController extends AppController {

	var $name = 'Travelers';
	var $components = array('Email', 'Notification', 'Auth', 'RequestHandler', 'Cookie');
	var $helpers = array('Text','Js', 'Html', 'Ajax', 'Javascript');

/*
 * Takes the id of a user_detail and calls Notification to send an email to them
 */
	function sendTravelerMail($id, $template) {
    $traveler = $this->Traveler->read(null,$id);
	$this->set('traveler', $traveler); // can this be set in notification?
	
	$this->Notification->sendHtmlTravelerMail($traveler, $template);
	}
	
	/* Traveler Account Detail Page */
	function profile() {
		$id = $this->Session->read('Traveler.id');
		//$this->sendNewUserMail($id);
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['Traveler']['id'] = $this->Session->read('Traveler.id');
			$this->data['User']['id'] = $this->Session->read('Auth.User.id');
			$this->data['User']['role_id'] = $this->Session->read('Auth.User.role_id');
			//debug($this->data);
			if ($this->Traveler->saveAll($this->data, array('validate' => 'first'))) {
				$this->Session->setFlash(__('Your profile has been saved', true));
				$this->redirect('/travelers/profile');
			} else {
				$this->Session->setFlash(__('Your profile could not be saved. Please, try again.', true));
			} 
		}
		if (empty($this->data)) {
			$this->data = $this->Traveler->read(null, $id);
		}
	}
	
	function signup() {
		if (!empty($this->data)) {
			$this->Traveler->User->create();
			$this->Traveler->create();

			$this->data['User']['role_id'] = Configure::read('Role.Traveler_ID');
			$this->data['User']['status'] = 1;
			if ($this->Traveler->saveAll($this->data)) {
				$this->sendTravelerMail($this->Traveler->id, 'newTraveler');
				$this->Session->setFlash(__('Your account has been created.  Welcome to traveltipping', true));
				$this->Auth->login();
				$this->requestAction('/users/login');
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
	}
	
	function ajax_signup() {
			if (!empty($this->data)) {
			$this->Traveler->User->create();
			$this->Traveler->create();
			$this->data['User']['role_id'] = Configure::read('Role.Traveler_ID');
			$this->data['User']['status'] = 1;
			if ($this->Traveler->saveAll($this->data)) {
				$this->sendTravelerMail($this->Traveler->id, 'newTraveler');
				$this->Session->setFlash(__('Your account has been created.  Welcome to traveltipping', true));
				$this->Auth->login();
				$this->Session->write('User.new', 1);
				$this->redirect(array('controller' => 'users', 'action' => 'ajax_logged_in'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		$this->render('ajax_signup','ajax');
	}
	
function ajax_sign_in() {

	if(!empty($this->data)) {
		
		$user = $this->Traveler->User->findByEmail($this->data['User']['email']);
		if($user['User']['role_id'] == Configure::Read('Role.Traveler_ID')) {
			if($this->Auth->login()) { //This is where the actual login happens.
				$this->Session->write('Traveler.ajax_login', 1);
				$this->requestAction('/users/login');
			}
			else {
			$this->Session->setFlash(__('Invalid credentials. Please try again.', true));
			}
		}
		else {
			$this->Session->setFlash(__('Please log in with a traveler account in order to purchase.'));
		}
	}
	$this->render('ajax_sign_in','ajax');
}


/**
* Traveler Deals 
* Displays the traveler's deals by status
* @param string $deal_status Status of the merchants deal: Upcoming, Past
*
*/
	function my_deals($purchaseStatus) {
		$this->loadModel('DealPurchase');
		$this->DealPurchase->recursive = 3;
		$purchases;
		if(strcmp($purchaseStatus, "upcoming") == 0)
		{
			$purchases = $this->DealPurchase->find('all', array('conditions' => 
				array('DealPurchase.traveler_id' => $this->Session->read('Traveler.id'), 
				"NOT" => array('DealPurchase.end_date <=' => date('Y-m-d')))));
		}
		
		if(strcmp($purchaseStatus, "past") == 0)
		{
			$purchases = $this->DealPurchase->find('all', array('conditions' => 
				array('DealPurchase.traveler_id' => $this->Session->read('Traveler.id'), 
				"NOT" => array('DealPurchase.end_date >' => date('Y-m-d')))));
		}
		 
	$this->set(compact('purchases', 'purchaseStatus'));
	}

	
}

?>
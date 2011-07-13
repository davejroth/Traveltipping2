<?php
class TravelersController extends AppController {

	var $name = 'Travelers';
	var $components = array('Email', 'Notification');

/*
 * Takes the id of a user_detail and calls Notification to send an email to them
 */
	function sendNewUserMail($id) {
    $Traveler = $this->Traveler->read(null,$id);
	$this->set('Traveler', $Traveler); // can this be set in notification?
	
	$this->Notification->sendNewUserMail($Traveler);
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
			$this->data['User']['id'] = $this->Session->read('User.id');
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
		$errors = $this->Traveler->invalidFields();
		$users = $this->Traveler->User->find('list');
		$states = $this->Traveler->State->find('list');
		$this->set(compact('users', 'states', 'errors'));
		$this->set('traveler', $this->Traveler->read(null, $id));
	}
	
	function signup() {
		if (!empty($this->data)) {
			
			$this->Traveler->User->create();
			$this->Traveler->create();

			$this->data['User']['role_id'] = Configure::read('Role.Traveler_ID');
			$this->data['User']['status'] = 1;
			if ($this->Traveler->saveAll($this->data)) {
				$this->sendNewUserMail($this->Traveler->id);
				$this->Session->setFlash(__('Your account has been created.  Welcome to traveltipping', true));
				$this->Auth->login();
				$this->Session->write('User.new', 1);
				$this->redirect(array('controller' => 'users', 'action' => 'loginredirect'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
	}
	

}

?>
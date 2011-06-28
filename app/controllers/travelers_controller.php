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
	function profile($id = null) {
	//$this->sendNewUserMail($id);
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['User']['username'] = $this->data['User']['email'];
			if ($this->Traveler->saveAll($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Traveler->read(null, $id);
		}
		
		$users = $this->Traveler->User->find('list');
		$states = $this->Traveler->State->find('list');
		$this->set(compact('users', 'states'));
		$this->set('traveler', $this->Traveler->read(null, $id));
	}

}

?>
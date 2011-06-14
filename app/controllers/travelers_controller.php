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

	function index() {
		$this->Traveler->recursive = 0;
		$this->set('travelers', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('traveler', $this->Traveler->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			
			$this->Traveler->User->create();
			$this->Traveler->create();
			$userid = 3;
			$this->data['User']['username'] = $this->data['User']['email'];
			$this->data['User']['role_id'] = $userid;
			$this->data['User']['password'] = "1949be75f0f74d49cb8c08f1152c8ae2ff563203";
			$this->data['User']['status'] = 1;
			if ($this->Traveler->saveAll($this->data)) {
				$this->sendNewUserMail($this->Traveler->id);
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}

		$users = $this->Traveler->User->find('list');
		$states = $this->Traveler->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function edit($id = null) {
	$this->sendNewUserMail($id);
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
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for user detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Traveler->delete($id)) {
			$this->Session->setFlash(__('User detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('User detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Traveler->recursive = 0;
		$this->set('travelers', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('traveler', $this->Traveler->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Traveler->create();
			if ($this->Traveler->save($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		$users = $this->Traveler->User->find('list');
		$states = $this->Traveler->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Traveler->save($this->data)) {
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
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for user detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Traveler->delete($id)) {
			$this->Session->setFlash(__('User detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('User detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}



?>
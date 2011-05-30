<?php
class UserDetailsController extends AppController {

	var $name = 'UserDetails';
	var $components = array('Email', 'Notification');

/*
 * Takes the id of a user_detail and sends an email to them
 */
	function sendNewUserMail($id) {
    $UserDetail = $this->UserDetail->read(null,$id);
	$User = $this->UserDetail->User->read(null, $UserDetail['UserDetail']['user_id']);
	   /* SMTP Options */
	
   $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
   );
	$this->Email->delivery = 'smtp';
	//$this->Email->to = 'davejroth@gmail.com';
    $this->Email->to = $UserDetail['User']['email'];
    $this->Email->subject = 'Welcome to TravelTipping!';
    $this->Email->replyTo = 'registration@traveltipping.com';
    $this->Email->from = 'TravelTipping Registration <registration@traveltipping.com>';
	$this->Email->template = 'new_registration';
    //$this->Email->template = 'simple_message'; // note no '.ctp'
    //Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->sendAs = 'text'; // because we like to send pretty mail
    //Set view variables as normal
	$this->set('UserDetail', $UserDetail);
	$this->set('id', $id);
    //Do not pass any args to send()
    $this->Email->send();
	$this->set('smtp_errors', $this->Email->smtpError);
 }

	function index() {
		$this->UserDetail->recursive = 0;
		$this->set('userDetails', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('userDetail', $this->UserDetail->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			
			$this->UserDetail->User->create();
			$this->UserDetail->create();
			$userid = 3;
			$this->data['User']['username'] = $this->data['User']['email'];
			$this->data['User']['role_id'] = $userid;
			$this->data['User']['password'] = "1949be75f0f74d49cb8c08f1152c8ae2ff563203";
			$this->data['User']['status'] = 1;
			if ($this->UserDetail->saveAll($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->sendNewUserMail($this->UserDetail->id);
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		
		$this->sendNewUserMail($this->UserDetail->id );
		$users = $this->UserDetail->User->find('list');
		$states = $this->UserDetail->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function edit($id = null) {
		//$this->Notification->doComplexOperation(1,2); Testing components
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['User']['username'] = $this->data['User']['email'];
			if ($this->UserDetail->saveAll($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->UserDetail->read(null, $id);
		}
		
		$users = $this->UserDetail->User->find('list');
		$states = $this->UserDetail->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for user detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->UserDetail->delete($id)) {
			$this->Session->setFlash(__('User detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('User detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->UserDetail->recursive = 0;
		$this->set('userDetails', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('userDetail', $this->UserDetail->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->UserDetail->create();
			if ($this->UserDetail->save($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		$users = $this->UserDetail->User->find('list');
		$states = $this->UserDetail->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid user detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->UserDetail->save($this->data)) {
				$this->Session->setFlash(__('The user detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->UserDetail->read(null, $id);
		}
		$users = $this->UserDetail->User->find('list');
		$states = $this->UserDetail->State->find('list');
		$this->set(compact('users', 'states'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for user detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->UserDetail->delete($id)) {
			$this->Session->setFlash(__('User detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('User detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}



?>
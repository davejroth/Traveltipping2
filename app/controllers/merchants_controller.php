<?php
class MerchantsController extends AppController {

	var $name = 'Merchants';
	var $components = array('Email', 'Notification');
/*
 * Takes the id of a user_detail and calls Notification to send an email to them
 */
	function sendNewMerchantMail($id) {
    $Merchant = $this->Merchant->read(null,$id);
	$this->set('Merchant', $Merchant); // can this be set in notification?
	
	$this->Notification->sendNewMerchantMail($Merchant);
 }
 
	function deals($deal_status) {

	}
	
	function index($deal_status) {
		$this->Merchant->recursive = 2;
		$this->set('merchant', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('merchant', $this->Merchant->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Merchant->User->create();
			$this->Merchant->create();
			$merchantid = 4;
			$this->data['User']['username'] = $this->data['User']['email'];
			$this->data['User']['role_id'] = $merchantid;
			$this->data['User']['password'] = "1949be75f0f74d49cb8c08f1152c8ae2ff563203";
			$this->data['User']['status'] = 1;

			if ($this->Merchant->saveAll($this->data)) {
				$this->sendNewMerchantMail($this->Merchant->id);
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Merchant->Country->find('list');
		$users = $this->Merchant->User->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$this->set(compact('countries', 'users', 'businessTypes'));
	}

	function edit($id = null) {
	//$this->sendNewMerchantMail($id);
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['User']['username'] = $this->data['User']['email'];
			if ($this->Merchant->saveAll($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Merchant->read(null, $id);
		}
		$countries = $this->Merchant->Country->find('list');
		$users = $this->Merchant->User->find('list');
		$this->set(compact('countries', 'users'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for merchant detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Merchant->delete($id)) {
			$this->Session->setFlash(__('Merchant detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Merchant detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Merchant->recursive = 0;
		$this->set('merchant', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('merchant', $this->Merchant->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Merchant->create();
			if ($this->Merchant->save($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$cities = $this->Merchant->City->find('list');
		$users = $this->Merchant->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Merchant->save($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Merchant->read(null, $id);
		}
		$cities = $this->Merchant->City->find('list');
		$users = $this->Merchant->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for merchant detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Merchant->delete($id)) {
			$this->Session->setFlash(__('Merchant detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Merchant detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
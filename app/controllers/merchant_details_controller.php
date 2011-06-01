<?php
class MerchantDetailsController extends AppController {

	var $name = 'MerchantDetails';
	var $components = array('Email', 'Notification');
/*
 * Takes the id of a user_detail and calls Notification to send an email to them
 */
	function sendNewMerchantMail($id) {
    $MerchantDetail = $this->MerchantDetail->read(null,$id);
	$this->set('MerchantDetail', $MerchantDetail); // can this be set in notification?
	
	$this->Notification->sendNewMerchantMail($MerchantDetail);
 }
	function index() {
		$this->MerchantDetail->recursive = 2;
		$this->set('merchantDetails', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('merchantDetail', $this->MerchantDetail->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->MerchantDetail->User->create();
			$this->MerchantDetail->create();
			$merchantid = 4;
			$this->data['User']['username'] = $this->data['User']['email'];
			$this->data['User']['role_id'] = $merchantid;
			$this->data['User']['password'] = "1949be75f0f74d49cb8c08f1152c8ae2ff563203";
			$this->data['User']['status'] = 1;

			if ($this->MerchantDetail->saveAll($this->data)) {
				$this->sendNewMerchantMail($this->MerchantDetail->id);
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$cities = $this->MerchantDetail->City->find('list');
		$users = $this->MerchantDetail->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function edit($id = null) {
	//$this->sendNewMerchantMail($id);
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['User']['username'] = $this->data['User']['email'];
			if ($this->MerchantDetail->saveAll($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->MerchantDetail->read(null, $id);
		}
		$cities = $this->MerchantDetail->City->find('list');
		$users = $this->MerchantDetail->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for merchant detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->MerchantDetail->delete($id)) {
			$this->Session->setFlash(__('Merchant detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Merchant detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->MerchantDetail->recursive = 0;
		$this->set('merchantDetails', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('merchantDetail', $this->MerchantDetail->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->MerchantDetail->create();
			if ($this->MerchantDetail->save($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$cities = $this->MerchantDetail->City->find('list');
		$users = $this->MerchantDetail->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant detail', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->MerchantDetail->save($this->data)) {
				$this->Session->setFlash(__('The merchant detail has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->MerchantDetail->read(null, $id);
		}
		$cities = $this->MerchantDetail->City->find('list');
		$users = $this->MerchantDetail->User->find('list');
		$this->set(compact('cities', 'users'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for merchant detail', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->MerchantDetail->delete($id)) {
			$this->Session->setFlash(__('Merchant detail deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Merchant detail was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
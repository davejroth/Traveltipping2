<?php
class DealPurchasesController extends AppController {

	var $name = 'DealPurchases';

	function index() {
		$this->DealPurchase->recursive = 0;
		$this->set('dealPurchases', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal purchase', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealPurchase', $this->DealPurchase->read(null, $id));
	}

	function add($id) {
		if (!empty($this->data)) {
			$this->DealPurchase->create();
			$this->data['DealPurchase']['deal_id'] = $id;
			$random_hash = substr(md5(uniqid(rand(), true)), -10, 10);
			$this->data['DealPurchase']['confirmation_code'] = $random_hash;
			if ($this->DealPurchase->save($this->data)) {
				$this->Session->setFlash(__('The deal purchase has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
			}
		}
		$this->set('deal', $this->DealPurchase->Deal->read(null, $id));
		$deals = $this->DealPurchase->Deal->find('list');
		$travelers = $this->DealPurchase->Traveler->find('list');
		$this->set(compact('deals', 'travelers'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal purchase', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealPurchase->save($this->data)) {
				$this->Session->setFlash(__('The deal purchase has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealPurchase->read(null, $id);
		}
		$deals = $this->DealPurchase->Deal->find('list');
		$travelers = $this->DealPurchase->Traveler->find('list');
		$this->set(compact('deals', 'travelers'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal purchase', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealPurchase->delete($id)) {
			$this->Session->setFlash(__('Deal purchase deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal purchase was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealPurchase->recursive = 0;
		$this->set('dealPurchases', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal purchase', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealPurchase', $this->DealPurchase->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealPurchase->create();
			if ($this->DealPurchase->save($this->data)) {
				$this->Session->setFlash(__('The deal purchase has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
			}
		}
		$deals = $this->DealPurchase->Deal->find('list');
		$travelers = $this->DealPurchase->Traveler->find('list');
		$this->set(compact('deals', 'travelers'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal purchase', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealPurchase->save($this->data)) {
				$this->Session->setFlash(__('The deal purchase has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealPurchase->read(null, $id);
		}
		$deals = $this->DealPurchase->Deal->find('list');
		$travelers = $this->DealPurchase->Traveler->find('list');
		$this->set(compact('deals', 'travelers'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal purchase', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealPurchase->delete($id)) {
			$this->Session->setFlash(__('Deal purchase deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal purchase was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
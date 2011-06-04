<?php
class DealsController extends AppController {

	var $name = 'Deals';

	function index() {
		$this->Deal->recursive = 0;
		$this->set('deals', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('deal', $this->Deal->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Deal->create();
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Deal->read(null, $id);
		}
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Deal->delete($id)) {
			$this->Session->setFlash(__('Deal deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Deal->recursive = 0;
		$this->set('deals', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('deal', $this->Deal->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Deal->create();
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Deal->read(null, $id);
		}
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Deal->delete($id)) {
			$this->Session->setFlash(__('Deal deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

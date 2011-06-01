<?php
class DealsController extends AppController {

	var $name = 'Deals';

	public $helpers = array('Text');
	
	
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
		$this->set('nodes', $this->Deal->Node->find('list'));
		//$nodes = $this->Deal->Node->find('list');
		$this->set('pictures', $this->Deal->Node->find('all', array('conditions'=>array('DealsNode.deal_id' => $this->Deal->id))));
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$dealTypes = $this->Deal->DealType->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$cities = $this->Deal->City->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'dealTypes', 'reservationTypes', 'destinations', 'cities'));
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
		$this->set('nodes', $this->Deal->Node->find('list'));
		$this->set('images', $this->Deal->Node->find('all'));
		$this->Deal->bindModel(array('hasOne' => array('DealsNode')));
		//$this->set('pictures', $this->Deal->DealsNode->find('all'));//array('conditions'=>array('DealsNode.deal_id' => $this->Deal->id))));
		$this->set('thisdeal', $this->Deal->find('first', array('conditions'=>array('Deal.id' => $this->Deal->id))));
		$merchantDetails = $this->Deal->MerchantDetail->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$dealTypes = $this->Deal->DealType->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$cities = $this->Deal->City->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'dealTypes', 'destinations', 'cities'));
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
		$dealTypes = $this->Deal->DealType->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$cities = $this->Deal->City->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'dealTypes', 'destinations', 'cities'));
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
		$dealTypes = $this->Deal->DealType->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$cities = $this->Deal->City->find('list');
		$this->set(compact('merchantDetails', 'dealStatuses', 'dealTypes', 'destinations', 'cities'));
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
?>
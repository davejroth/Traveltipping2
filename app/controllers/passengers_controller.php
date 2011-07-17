<?php
class PassengersController extends AppController {

	var $name = 'Passengers';

	function index() {
		$this->Passenger->recursive = 0;
		$this->set('passengers', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid passenger', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('passenger', $this->Passenger->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Passenger->create();
			if ($this->Passenger->save($this->data)) {
				$this->Session->setFlash(__('The passenger has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The passenger could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Passenger->Country->find('list');
		$dealPurchases = $this->Passenger->DealPurchase->find('list');
		$this->set(compact('countries', 'dealPurchases'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid passenger', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Passenger->save($this->data)) {
				$this->Session->setFlash(__('The passenger has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The passenger could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Passenger->read(null, $id);
		}
		$countries = $this->Passenger->Country->find('list');
		$dealPurchases = $this->Passenger->DealPurchase->find('list');
		$this->set(compact('countries', 'dealPurchases'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for passenger', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Passenger->delete($id)) {
			$this->Session->setFlash(__('Passenger deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Passenger was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

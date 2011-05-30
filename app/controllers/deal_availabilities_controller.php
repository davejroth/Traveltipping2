<?php
class DealAvailabilitiesController extends AppController {

	var $name = 'DealAvailabilities';

	function index() {
		$this->DealAvailability->recursive = 0;
		$this->set('dealAvailabilities', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal availability', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealAvailability', $this->DealAvailability->read(null, $id));
	}
	
//Takes a start and end date and populates deal_availabilities with each day in between and the num_reservations
	function add() {
		if (!empty($this->data)) {
			$start_date = new DateTime(implode("-",$this->data['DealAvailability']['start_date']));
			$end_date = new DateTime(implode("-",$this->data['DealAvailability']['end_date']));
			$interval = date_diff($start_date, $end_date);
			
			for ($i = 0; $i <= $interval; $i++)
			{
				$this->data['DealAvailability']['reservation_date'] = $start_date->format('Y-m-d');
				$this->DealAvailability->create();
				$start_date->add(new DateInterval('P1D'));
			}
			if ($this->DealAvailability->save($this->data)) {
				$this->Session->setFlash(__('The deal availability has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal availability could not be saved. Please, try again.', true));
			}
		}
		$deals = $this->DealAvailability->Deal->find('list');
		$this->set(compact('deals'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal availability', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealAvailability->save($this->data)) {
				$this->Session->setFlash(__('The deal availability has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal availability could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealAvailability->read(null, $id);
		}
		$deals = $this->DealAvailability->Deal->find('list');
		$this->set(compact('deals'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal availability', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealAvailability->delete($id)) {
			$this->Session->setFlash(__('Deal availability deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal availability was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealAvailability->recursive = 0;
		$this->set('dealAvailabilities', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal availability', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealAvailability', $this->DealAvailability->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealAvailability->create();
			if ($this->DealAvailability->save($this->data)) {
				$this->Session->setFlash(__('The deal availability has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal availability could not be saved. Please, try again.', true));
			}
		}
		$deals = $this->DealAvailability->Deal->find('list');
		$this->set(compact('deals'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal availability', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealAvailability->save($this->data)) {
				$this->Session->setFlash(__('The deal availability has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal availability could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealAvailability->read(null, $id);
		}
		$deals = $this->DealAvailability->Deal->find('list');
		$this->set(compact('deals'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal availability', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealAvailability->delete($id)) {
			$this->Session->setFlash(__('Deal availability deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal availability was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
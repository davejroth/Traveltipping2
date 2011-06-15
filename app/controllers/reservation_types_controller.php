<?php
class ReservationTypesController extends AppController {

	var $name = 'ReservationTypes';

	function index() {
		$this->ReservationType->recursive = 0;
		$this->set('reservationTypes', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid reservation type', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('reservationType', $this->ReservationType->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->ReservationType->create();
			if ($this->ReservationType->save($this->data)) {
				$this->Session->setFlash(__('The reservation type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The reservation type could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid reservation type', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->ReservationType->save($this->data)) {
				$this->Session->setFlash(__('The reservation type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The reservation type could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->ReservationType->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for reservation type', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->ReservationType->delete($id)) {
			$this->Session->setFlash(__('Reservation type deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Reservation type was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->ReservationType->recursive = 0;
		$this->set('reservationTypes', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid reservation type', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('reservationType', $this->ReservationType->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->ReservationType->create();
			if ($this->ReservationType->save($this->data)) {
				$this->Session->setFlash(__('The reservation type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The reservation type could not be saved. Please, try again.', true));
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid reservation type', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->ReservationType->save($this->data)) {
				$this->Session->setFlash(__('The reservation type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The reservation type could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->ReservationType->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for reservation type', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->ReservationType->delete($id)) {
			$this->Session->setFlash(__('Reservation type deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Reservation type was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

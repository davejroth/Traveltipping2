<?php
class DealTypesController extends AppController {

	var $name = 'DealTypes';
	//var $uses = 'User'; 

	function index() {
		$this->DealType->recursive = 0;
		$this->set('dealTypes', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal type', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealType', $this->DealType->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->DealType->create();
			if ($this->DealType->save($this->data)) {
				$this->Session->setFlash(__('The deal type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal type could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal type', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealType->save($this->data)) {
				$this->Session->setFlash(__('The deal type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal type could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealType->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal type', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealType->delete($id)) {
			$this->Session->setFlash(__('Deal type deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal type was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealType->recursive = 0;
		$this->set('dealTypes', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal type', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealType', $this->DealType->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealType->create();
			if ($this->DealType->save($this->data)) {
				$this->Session->setFlash(__('The deal type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal type could not be saved. Please, try again.', true));
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal type', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealType->save($this->data)) {
				$this->Session->setFlash(__('The deal type has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal type could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealType->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal type', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealType->delete($id)) {
			$this->Session->setFlash(__('Deal type deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal type was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>
<?php
class DealsRegionsController extends AppController {

	var $name = 'DealsRegions';

	function index() {
		$this->DealsRegion->recursive = 0;
		$this->set('dealsRegions', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deals region', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealsRegion', $this->DealsRegion->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->DealsRegion->create();
			if ($this->DealsRegion->save($this->data)) {
				$this->Session->setFlash(__('The deals region has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals region could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deals region', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealsRegion->save($this->data)) {
				$this->Session->setFlash(__('The deals region has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals region could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealsRegion->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deals region', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealsRegion->delete($id)) {
			$this->Session->setFlash(__('Deals region deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deals region was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealsRegion->recursive = 0;
		$this->set('dealsRegions', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deals region', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealsRegion', $this->DealsRegion->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealsRegion->create();
			if ($this->DealsRegion->save($this->data)) {
				$this->Session->setFlash(__('The deals region has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals region could not be saved. Please, try again.', true));
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deals region', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealsRegion->save($this->data)) {
				$this->Session->setFlash(__('The deals region has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals region could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealsRegion->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deals region', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealsRegion->delete($id)) {
			$this->Session->setFlash(__('Deals region deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deals region was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

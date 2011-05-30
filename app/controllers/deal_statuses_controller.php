<?php
class DealStatusesController extends AppController {

	var $name = 'DealStatuses';

	function index() {
		$this->DealStatus->recursive = 0;
		$this->set('dealStatuses', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid deal status', true), array('action' => 'index'));
		}
		$this->set('dealStatus', $this->DealStatus->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->DealStatus->create();
			if ($this->DealStatus->save($this->data)) {
				$this->flash(__('Dealstatus saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid deal status', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealStatus->save($this->data)) {
				$this->flash(__('The deal status has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealStatus->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid deal status', true)), array('action' => 'index'));
		}
		if ($this->DealStatus->delete($id)) {
			$this->flash(__('Deal status deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Deal status was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealStatus->recursive = 0;
		$this->set('dealStatuses', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid deal status', true), array('action' => 'index'));
		}
		$this->set('dealStatus', $this->DealStatus->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealStatus->create();
			if ($this->DealStatus->save($this->data)) {
				$this->flash(__('Dealstatus saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid deal status', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealStatus->save($this->data)) {
				$this->flash(__('The deal status has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealStatus->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid deal status', true)), array('action' => 'index'));
		}
		if ($this->DealStatus->delete($id)) {
			$this->flash(__('Deal status deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Deal status was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
}
?>
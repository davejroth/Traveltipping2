<?php
class StatesController extends AppController {

	var $name = 'States';

	function index() {
		$this->State->recursive = 0;
		$this->set('states', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid state', true), array('action' => 'index'));
		}
		$this->set('state', $this->State->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->State->create();
			if ($this->State->save($this->data)) {
				$this->flash(__('State saved.', true), array('action' => 'index'));
			} else {
			}
		}
		$countries = $this->State->Country->find('list');
		$this->set(compact('countries'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid state', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->State->save($this->data)) {
				$this->flash(__('The state has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->State->read(null, $id);
		}
		$countries = $this->State->Country->find('list');
		$this->set(compact('countries'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid state', true)), array('action' => 'index'));
		}
		if ($this->State->delete($id)) {
			$this->flash(__('State deleted', true), array('action' => 'index'));
		}
		$this->flash(__('State was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->State->recursive = 0;
		$this->set('states', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid state', true), array('action' => 'index'));
		}
		$this->set('state', $this->State->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->State->create();
			if ($this->State->save($this->data)) {
				$this->flash(__('State saved.', true), array('action' => 'index'));
			} else {
			}
		}
		$countries = $this->State->Country->find('list');
		$this->set(compact('countries'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid state', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->State->save($this->data)) {
				$this->flash(__('The state has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->State->read(null, $id);
		}
		$countries = $this->State->Country->find('list');
		$this->set(compact('countries'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid state', true)), array('action' => 'index'));
		}
		if ($this->State->delete($id)) {
			$this->flash(__('State deleted', true), array('action' => 'index'));
		}
		$this->flash(__('State was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
}
?>
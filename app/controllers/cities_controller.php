<?php
class CitiesController extends AppController {

	var $name = 'Cities';

	function index() {
		$this->City->recursive = 2;
		$this->set('cities', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid city', true), array('action' => 'index'));
		}
		$this->set('city', $this->City->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->City->create();
			if ($this->City->save($this->data)) {
				$this->flash(__('City saved.', true), array('action' => 'index'));
			} else {
			}
		}
		$states = $this->City->State->find('list');
		$this->set(compact('states'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid city', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->City->save($this->data)) {
				$this->flash(__('The city has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->City->read(null, $id);
		}
		$states = $this->City->State->find('list');
		$this->set(compact('states'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid city', true)), array('action' => 'index'));
		}
		if ($this->City->delete($id)) {
			$this->flash(__('City deleted', true), array('action' => 'index'));
		}
		$this->flash(__('City was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->City->recursive = 0;
		$this->set('cities', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid city', true), array('action' => 'index'));
		}
		$this->set('city', $this->City->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->City->create();
			if ($this->City->save($this->data)) {
				$this->flash(__('City saved.', true), array('action' => 'index'));
			} else {
			}
		}
		$states = $this->City->State->find('list');
		$this->set(compact('states'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid city', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->City->save($this->data)) {
				$this->flash(__('The city has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->City->read(null, $id);
		}
		$states = $this->City->State->find('list');
		$this->set(compact('states'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid city', true)), array('action' => 'index'));
		}
		if ($this->City->delete($id)) {
			$this->flash(__('City deleted', true), array('action' => 'index'));
		}
		$this->flash(__('City was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
}
?>
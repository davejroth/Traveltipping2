<?php
class CountriesController extends AppController {

	var $name = 'Countries';

	function index() {
		$this->Country->recursive = 0;
		$this->set('countries', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid country', true), array('action' => 'index'));
		}
		$this->set('country', $this->Country->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Country->create();
			if ($this->Country->save($this->data)) {
				$this->flash(__('Country saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid country', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Country->save($this->data)) {
				$this->flash(__('The country has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Country->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid country', true)), array('action' => 'index'));
		}
		if ($this->Country->delete($id)) {
			$this->flash(__('Country deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Country was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Country->recursive = 0;
		$this->set('countries', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid country', true), array('action' => 'index'));
		}
		$this->set('country', $this->Country->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Country->create();
			if ($this->Country->save($this->data)) {
				$this->flash(__('Country saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid country', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Country->save($this->data)) {
				$this->flash(__('The country has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Country->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid country', true)), array('action' => 'index'));
		}
		if ($this->Country->delete($id)) {
			$this->flash(__('Country deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Country was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
}
?>
<?php
class DestinationsController extends AppController {

	var $name = 'Destinations';

	//$this->set('countries',$this->Country->find('list'));
	function index() {
		$this->Destination->recursive = 0;
		$this->set('destinations', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid destination', true), array('action' => 'index'));
		}
		$this->set('destination', $this->Destination->read(null, $id));
	}

	function add() {
		$this->set('countries', $this->Destination->Country->find('list'));
		if (!empty($this->data)) {
			$this->Destination->create();
			if ($this->Destination->save($this->data)) {
				$this->flash(__('Destination saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function edit($id = null) {
		$this->set('countries', $this->Destination->Country->find('list'));
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid destination', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Destination->save($this->data)) {
				$this->flash(__('The destination has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Destination->read(null, $id);
		}
	}

	function delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid destination', true)), array('action' => 'index'));
		}
		if ($this->Destination->delete($id)) {
			$this->flash(__('Destination deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Destination was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Destination->recursive = 0;
		$this->set('destinations', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->flash(__('Invalid destination', true), array('action' => 'index'));
		}
		$this->set('destination', $this->Destination->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Destination->create();
			if ($this->Destination->save($this->data)) {
				$this->flash(__('Destination saved.', true), array('action' => 'index'));
			} else {
			}
		}
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->flash(sprintf(__('Invalid destination', true)), array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Destination->save($this->data)) {
				$this->flash(__('The destination has been saved.', true), array('action' => 'index'));
			} else {
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Destination->read(null, $id);
		}
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->flash(sprintf(__('Invalid destination', true)), array('action' => 'index'));
		}
		if ($this->Destination->delete($id)) {
			$this->flash(__('Destination deleted', true), array('action' => 'index'));
		}
		$this->flash(__('Destination was not deleted', true), array('action' => 'index'));
		$this->redirect(array('action' => 'index'));
	}
}
?>
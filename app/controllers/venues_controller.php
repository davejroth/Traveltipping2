<?php
class VenuesController extends AppController {

	var $name = 'Venues';

	function index() {
		$this->Venue->recursive = 0;
		$this->set('venues', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid venue', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('venue', $this->Venue->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Venue->create();
			if ($this->Venue->save($this->data)) {
				$this->Session->setFlash(__('The venue has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The venue could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Venue->Country->find('list');
		$this->set(compact('countries'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid venue', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Venue->save($this->data)) {
				$this->Session->setFlash(__('The venue has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The venue could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Venue->read(null, $id);
		}
		$countries = $this->Venue->Country->find('list');
		$this->set(compact('countries'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for venue', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Venue->delete($id)) {
			$this->Session->setFlash(__('Venue deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Venue was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

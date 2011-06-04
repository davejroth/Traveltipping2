<?php
class DealsCategoriesController extends AppController {

	var $name = 'DealsCategories';

	function index() {
		$this->DealsCategory->recursive = 0;
		$this->set('dealsCategories', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deals category', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealsCategory', $this->DealsCategory->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->DealsCategory->create();
			if ($this->DealsCategory->save($this->data)) {
				$this->Session->setFlash(__('The deals category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals category could not be saved. Please, try again.', true));
			}
		}
		$deals = $this->DealsCategory->Deal->find('list');
		$categories = $this->DealsCategory->Category->find('list');
		$this->set(compact('deals', 'categories'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deals category', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealsCategory->save($this->data)) {
				$this->Session->setFlash(__('The deals category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals category could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealsCategory->read(null, $id);
		}
		$deals = $this->DealsCategory->Deal->find('list');
		$categories = $this->DealsCategory->Category->find('list');
		$this->set(compact('deals', 'categories'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deals category', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealsCategory->delete($id)) {
			$this->Session->setFlash(__('Deals category deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deals category was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->DealsCategory->recursive = 0;
		$this->set('dealsCategories', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deals category', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('dealsCategory', $this->DealsCategory->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->DealsCategory->create();
			if ($this->DealsCategory->save($this->data)) {
				$this->Session->setFlash(__('The deals category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals category could not be saved. Please, try again.', true));
			}
		}
		$deals = $this->DealsCategory->Deal->find('list');
		$categories = $this->DealsCategory->Category->find('list');
		$this->set(compact('deals', 'categories'));
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deals category', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->DealsCategory->save($this->data)) {
				$this->Session->setFlash(__('The deals category has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deals category could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->DealsCategory->read(null, $id);
		}
		$deals = $this->DealsCategory->Deal->find('list');
		$categories = $this->DealsCategory->Category->find('list');
		$this->set(compact('deals', 'categories'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deals category', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->DealsCategory->delete($id)) {
			$this->Session->setFlash(__('Deals category deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deals category was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}

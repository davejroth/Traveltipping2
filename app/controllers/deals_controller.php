<?php
class DealsController extends AppController {

	var $name = 'Deals';
	
	var $components = array('RequestHandler','Attachment');

	public $helpers = array('Text','Js');
	
	var $paginate = array('Deal'=>array('group'=>'Deal.id'));
/*
 * Index
 * Controller for main deal searching and listing page
 */
	function index() {
		//Create regions array for filtering purposes
		$regions = array();
		if(!empty($this->data)){ 
			$x = 0;
			foreach ($this->data['Deal']['region'] as $region){
				if($region == 1){
					array_push($regions,$x+1);
				}
				$x++;
			}
		}
		$conditions = array('Deal.deal_status_id' => Configure::read('Deal.Status_Listed'));
		
		if(!empty($regions)) {
			$conditions['DealsRegion.region_id'] = $regions;
		}
		$this->Deal->bindModel(array('hasOne' => array('DealsRegion')), false);
		$deals = $this->paginate('Deal', array($conditions));
		$count = count($deals);
		for ($i = 0; $i < $count; $i++) {
			$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
		}
		$this->set('deals', $deals);
		$this->set('count', $count);
		$this->set('regions', $regions );
	}
/**
 * View
 * Controller for the main details page that users view
 */
	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('deal', $this->Deal->read(null, $id));
		$this->set('count', $this->Deal->DealPurchase->find('count',
		array('conditions' => array('DealPurchase.deal_id' => $id ))));
	}
/* I believe this function is deprecated.  Users never have the ability to edit their own deals 
	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Deal->read(null, $id);
		}
		$merchants = $this->Deal->Merchant->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$this->set(compact('merchants', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions'));
	}
   */
	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Deal->delete($id)) {
			$this->Session->setFlash(__('Deal deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	function admin_index() {
		$this->Deal->recursive = 0;
		$this->set('deals', $this->paginate());
	}

	function admin_view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('deal', $this->Deal->read(null, $id));
	}

	function admin_add() {
		if (!empty($this->data)) {
			$this->Deal->create();
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		$merchants = $this->Deal->Venue->Merchant->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$countries = $this->Deal->Venue->Country->find('list');
		$venues = $this->Deal->Venue->find('list');
		$this->set(compact('venues','merchants', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions', 'countries'));	
		 $this->layout = 'admin';
	
	}

	function admin_edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Deal->save($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Deal->read(null, $id);
		}
		$merchants = $this->Deal->Merchant->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$destinations = $this->Deal->Destination->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$countries = $this->Deal->Country->find('list');
		$this->set(compact('merchants', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions', 'countries'));
	}

	function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Deal->delete($id)) {
			$this->Session->setFlash(__('Deal deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Deal was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
/*
 * Book
 * First page of deal purchase process.  Users book their dates on this page.
 */ 
	function book($id = null) {
		$deal = $this->Deal->read(null, $id);
		
		$this->set(compact('deal'));
	
	}
}

// Filter deals by regions$deals = $this->Deal->find('all');
		/*$this->set('nadeals', $this->Deal->find('all', array(
		'fields' => array('Deal.*'),
		'conditions'=>$conditions,  'group' => array('Deal.id')))); */
		/*$conditions = null;
		if(!empty($regions)) {
			$conditions = array('DealsRegion.region_id' => $regions);
		} */
?>
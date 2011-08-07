<?php
class DealsController extends AppController {

	var $name = 'Deals';	
	var $components = array('Email', 'Notification', 'RequestHandler','Attachment');
	var $helpers = array('JavaScript', 'Html', 'Form');

	//var $helpers = array('Text','Js', 'Html', 'Ajax', 'Javascript', 'Form');
	 //var $helpers = array('Html','Ajax','Javascript');
	
	var $paginate = array('Deal'=>array('group'=>'Deal.id'));
/*
 * Index
 * Controller for main deal searching and listing page
 */
	function index() {
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
 * The controller checks the reservation type of the deal then takes different actions
 * based on the type.  On form submission, the controller calculates the trip start, end, nights,
 * and cost and passes to the purchase controller.
 */ 
	function book($id = null) {
		$deal = $this->Deal->read(null, $id);
		$reservationType = $this->Deal->GetReservationType($id);
		if(!empty($this->data)) { //If form is submitted
			if($reservationType == Configure::read('ReservationType.Fixed')){
			
			$nights = $deal['Deal']['max_nights'];
			$date1 = new DateTime($this->data['Deal']['start_date']);
			$date1->add(new DateInterval('P' . $nights . 'D'));
			$this->Session->delete('Trip');
			$this->Session->write('Trip.start_date', $this->data['Deal']['start_date']);
			$this->Session->write('Trip.end_date', $date1->format('Y-m-d'));
			$this->Session->write('Trip.days', $nights);
			$this->Session->write('Trip.cost', $deal['Deal']['discounted_price']);
			
			$this->redirect(array('controller' => 'deals', 'action'=>'purchase',$id));
			}
			elseif($reservationType == Configure::read('ReservationType.Variable')) {  
			
				$date1 = new DateTime($this->data['Deal']['start_date']);
				$date2 = new DateTime($this->data['Deal']['end_date']);
				$interval = $date1->diff($date2);
				$days = $interval->d;
				
				//There is some kind of rounding issue that floors the cost 
				//when it's done this way.  But now it seems to have stopped?
				$cost = (floatval($days) * floatval($deal['Deal']['discounted_price'] ));
				//debug($days);
				//debug($deal['Deal']['discounted_price']);
				//debug($cost);
				//debug($this->Session->read('Trip.cost'));
				$this->Session->delete('Trip');
				$this->Session->write('Trip.start_date', $this->data['Deal']['start_date']);
				$this->Session->write('Trip.end_date', $this->data['Deal']['end_date']);
				$this->Session->write('Trip.days', $days);
				$this->Session->write('Trip.cost', $cost);
					
				$this->redirect(array('controller' => 'deals', 'action'=>'purchase',$id));
				
			}
			elseif($reservationType == Configure::read('ReservationType.Set')) {

			
			}
		}
		else {  //Load the form
			//Load Availability and Purchase arrays
			//This could probably be refactored to just load a DealsRemaining array?
			$this->loadModel('DealAvailability');
			$availableDates = $this->DealAvailability->getAvailableDates($id);
			$this->loadModel('DealPurchase');
			$reservedDates = $this->DealPurchase->getReservations($id);
		
			//Temp function for loading dates
			$dates = array();
			for ($i = 1; $i<=31; $i++) {
				$dates['2011-6-'. $i] = '2011-6-' . $i;
			} 
			$this->set(compact('dates', 'deal'));
			if($reservationType == Configure::read('ReservationType.Fixed')){
			  	$this->render('book_fixed');
			}
			elseif($reservationType == Configure::read('ReservationType.Variable')){
			  	$this->render('book_variable');
			}
			elseif($reservationType == Configure::read('ReservationType.Set')){

			  	$this->render('book');
			}
		}
	}
/**
 * Purchase 
 * The CC information is entered on this page and the user login is confirmed.
 */
	function purchase($id = null) {
		if(!empty($this->data)) { //Credit card is submitted
			$travelerID = $this->Session->read('Traveler.id');   //Check that they are logged in
			if(is_null($travelerID)) {
				//They are not logged in and they need to be.
			}
			else {
				//They are logged in.  Validate the CC and make the purchase.
				$this->loadModel('Passenger');
				$purchase['DealPurchase']['deal_id'] = $id;
				$random_hash = substr(md5(uniqid(rand(), true)), -10, 10);
				$purchase['DealPurchase']['confirmation_code'] = $random_hash;
				$purchase['DealPurchase']['traveler_id'] = $travelerID;
				$purchase['DealPurchAse']['start_date'] = $this->Session->read('Trip.start_date');

				$purchase['DealPurchase']['end_date'] = $this->Session->read('Trip.end_date');
				
				$this->loadModel('Traveler');
				$traveler = $this->Traveler->read(null, $travelerID);
				$purchase['Passenger']['first_name'] = $traveler['Traveler']['first_name'];
				$purchase['Passenger']['last_name'] = $traveler['Traveler']['last_name'];
				
				//use $this->Passenger so that the deal_purchase_id is inserted correctly
				if ($this->Passenger->saveAll($purchase)) {
					$this->redirect(array('controller' => 'deals', 'action'=>'confirmation',$id));

				} else {
					$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
				}
			}
		}
		elseif(empty($this->data)) {	//Load the page
		$deal = $this->Deal->read(null, $id);
		$deal['Deal']['trip_start_date'] = $this->Session->read('Trip.start_date');
		$deal['Deal']['trip_end_date'] = $this->Session->read('Trip.end_date');
		$deal['Deal']['days'] = $this->Session->read('Trip.days');
		$deal['Deal']['cost'] = $this->Session->read('Trip.cost');
		$this->set(compact('deal'));
		} 

	}

function confirmation($id = null) {
	$deal = $this->Deal->read(null, $id);
	$deal['Deal']['cost'] = $this->Session->read('Trip.cost');
	$reservation['trip_start_date'] = $this->Session->read('Trip.start_date');
	$reservation['trip_end_date'] = $this->Session->read('Trip.end_date');
	
	$this->set(compact('deal', 'reservation'));
}

}//End Class

?>
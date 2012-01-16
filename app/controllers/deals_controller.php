<?php


class DealsController extends AppController {

	var $name = 'Deals';	
	var $components = array('Email', 'Notification', 'RequestHandler','Attachment');
	var $helpers = array('JavaScript', 'Html', 'Form', 'Ajax', 'Js');
	
	var $paginate = array('Deal'=>array('group'=>'Deal.id'));
	
/**
 * Email function used to send Deal information.  
 */
	function sendDealMail($dealID, $venueID, $template) {
		$this->loadModel('Merchant');
		$Deal = $this->Deal->read(null, $dealID);
		$Venue = $this->Deal->Venue->read(null, $venueID); //Used for email address
		$Merchant = $this->Merchant->read(null, $Venue['Merchant']['id']); //Used for email address
		$this->set(compact('Deal', 'Merchant')); //Used for Deal info
		$this->Notification->sendHtmlMerchantMail($Merchant, $template);
		$this->Notification->sendHtmlAmMail($template);
	}
/**
 * Email function used to send purchase information to a traveler
 */
	function sendPurchaseMail($dealID, $travelerID, $purchaseID, $template) {
		$this->loadModel('Traveler');
		$deal = $this->Deal->read(null, $dealID);
		$dealPurchase = $this->Deal->DealPurchase->read(null, $purchaseID);
		$traveler = $this->Traveler->read(null, $travelerID); //Used for email address
		$this->set(compact('deal', 'traveler', 'dealPurchase')); //Used for Deal info
	
		$this->Notification->sendHtmlTravelerMail($traveler, $template);
	}
/*
 * Index
 * Controller for main deal searching and listing page
 */
	function index() {
		//Add regions to filter based on use choice
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
		//This function adds two fields - remaining_quantity and discount_percentage for sorting purposes in the pagination
	    $this->paginate = array('limit' => 500, 'fields'=>array('DISTINCT Deal.id'
			,'Deal.*'
			,"((SELECT COUNT(*) FROM `deal_purchases` WHERE deal_id = Deal.id) + Deal.purchase_pad)/Deal.max_purchases AS remaining_quantity"
			,'((Deal.original_price - Deal.discounted_price)/Deal.original_price) AS discount_percentage')
			, 'conditions' => $conditions  //Pass in conditions built above
			,'passit' => $this->passedArgs // pass via $extra			
			);
		$deals = $this->paginate();
		//debug($deals);
		$count = count($deals);
		for ($i = 0; $i < $count; $i++) {
			$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
			$deals[$i]['Deal']['current_purchases'] += $deals[$i]['Deal']['purchase_pad'];
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
		$deal = $this->Deal->read(null,$id);
		
		$count = $this->Deal->DealPurchase->find('count', array('conditions' => array('DealPurchase.deal_id' => $id )));
		$count += $deal['Deal']['purchase_pad'];
		$title_for_layout = $deal['Deal']['title'];
		$this->set(compact('count', 'deal', 'title_for_layout'));
	}
	function admin_index() {
		$this->Deal->recursive = 2;
		$this->Deal->Venue->bindModel(array('belongsTo' => array(
			'Merchant' => array(
				'className' => 'Merchant'
					)            
				)     
			) 
		,false);
		/* This is super hacky way of getting a deal's merchant email but pagination doesn't seem to like bindModel or custom SQL queries */
		$deals = $this->paginate();
		$dealInfo = array();
		foreach($deals as $deal) {
			$this->Deal->Venue->Merchant->recursive = 0;
			$user = $this->Deal->Venue->Merchant->find('first', array('conditions' => array('Merchant.user_id' => $deal['Venue']['Merchant']['user_id'])));
			$deal['User'] = $user;
			array_push($dealInfo, $deal);
			
		}
		$deals = $dealInfo;
		$this->set(compact('deals'));
	}
    /* DR - I used this function to test Braintree_Transactions
	function admin_view($id = null) {
			$result = Braintree_Transaction::sale(array(
			'amount' => '1000.00',
			'creditCard' => array(
				'number' => '5105105105105100',
				'expirationDate' => '05/12',
				'cvv' => '200',
			    'billingAddress' => array(
					'countryName' => 'USA'
				)
			)
		));

		if ($result->success) {
			print_r("success!: " . $result->transaction->id);
		} else if ($result->transaction) {
			print_r("Error processing transaction:");
			print_r("\n  message: " . $result->message);
			print_r("\n  code: " . $result->transaction->processorResponseCode);
			print_r("\n  text: " . $result->transaction->processorResponseText);
			if(!$result->transaction->avsErrorResponseCode && $result->transaction->avsPostalCodeResponseCode) { //No error processing avs
				print_r("\n AVS Error: " . $result->transaction->avsPostalCodeResponseCode);
			}
			if($result->transaction->cvvResponseCode) {
				print_r("\n CVV Error: " . $result->transaction->cvvResponseCode);
			}
		} else {
			print_r("Message: " . $result->message);
			print_r("\nValidation errors: \n");
			print_r($result->errors->deepAll());
		}
		if (!$id) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('deal', $this->Deal->read(null, $id));
	}
	*/
	function admin_add() {
		if (!empty($this->data)) {
			$this->Deal->create();
			//$this->data['Venue']['merchant_id'] = $this->data['Merchant']['id'];
			if ($this->Deal->saveAll($this->data)) {
				$this->Session->setFlash(__('The deal has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Deal->Venue->Country->find('list');
		$businessTypes = $this->Deal->Venue->BusinessType->find('list');
		$merchants = $this->Deal->Venue->Merchant->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$countries = $this->Deal->Venue->Country->find('list');
		$venues = $this->Deal->Venue->find('list');
		$this->set(compact('venues','merchants', 'dealStatuses', 'destinations', 'reservationTypes', 'categories', 'regions', 'countries', 'businessTypes'));	
		//$this->layout = 'admin';
	
	}

	function admin_edit($id = null) {
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid deal', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$savedDeal = $this->Deal->read(null, $id);
			if($savedDeal['Deal']['deal_status_id'] != $this->data['Deal']['deal_status_id']) {
				$statusChange = true;
			}
			else {
				$statusChange = false;
			}
			$this->Deal->set($this->data);
			if($this->Deal->validates()) {
				$this->Deal->updateAvailabilityRecords($id, $this->data);
				if ($this->Deal->saveAll($this->data)) {
					if($statusChange) {
						$thisVenue = $this->Deal->Venue->find('first', array('conditions' => array('Venue.id' => $this->data['Venue']['id'])));
								
						if($this->data['Deal']['deal_status_id'] == 2) {
							$this->sendDealMail($this->Deal->id, $thisVenue['Venue']['id'], "dealWaiting");
						}
						elseif($this->data['Deal']['deal_status_id'] == 4) {
							$this->sendDealMail($this->Deal->id, $thisVenue['Venue']['id'], "dealLive");
						}
						elseif($this->data['Deal']['deal_status_id'] == 5) {
							$this->sendDealMail($this->Deal->id, $thisVenue['Venue']['id'], "dealClose");
						}
						elseif($this->data['Deal']['deal_status_id'] == 6) {
							$this->sendDealMail($this->Deal->id, $thisVenue['Venue']['id'], "dealCancelled");
						}
					}
					$this->Session->setFlash(__('The deal has been saved', true));
					$this->redirect(array('action' => 'index'));
				} 
				else {
					$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
				}
			}
			else {
				$this->Session->setFlash(__('The deal could not be saved. Please see errors below.', true));
			}
		}
		
		if(empty($this->data)) {
			$this->data = $this->Deal->read(null, $id);
		}
		$thisVenue = $this->Deal->Venue->find('first', array('conditions' => array('Venue.id' => $this->data['Venue']['id'])));
		$countries = $this->Deal->Venue->Country->find('list');
		$businessTypes = $this->Deal->Venue->BusinessType->find('list');
		$merchants = $this->Deal->Venue->Merchant->find('list');
		$dealStatuses = $this->Deal->DealStatus->find('list');
		$reservationTypes = $this->Deal->ReservationType->find('list');
		$categories = $this->Deal->Category->find('list');
		$regions = $this->Deal->Region->find('list');
		$venues = $this->Deal->Venue->find('list');
		$this->set(compact('merchants', 'dealStatuses', 'venues', 'reservationTypes', 'categories', 'regions', 'thisVenue', 'countries', 'businessTypes'));
		

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
	
/**
  * Admin_Clone
  * This function clones an existing deal.  All deal details, the venue, and the merchant are the same other than the name of 
  * the deal, which changes to 'Clone of ...'
  */
	function admin_clone ($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for deal', true));
			$this->redirect(array('action'=>'index'));
		}
		else{
			$this->Deal->recursive = -1;
			$dealToClone = $this->Deal->read(null, $id);
			unset($dealToClone['Deal']['id']);
			unset($dealToClone['Deal']['created']);
			$dealToClone['Deal']['name'] = 'Clone of ' . $dealToClone['Deal']['name'];
			$dealToClone['Deal']['title'] = 'Clone of ' . $dealToClone['Deal']['title'];
			$this->Deal->create();
			if($this->Deal->save($dealToClone['Deal'])) {
				$this->Session->setFlash(__('Deal cloned successfully', true));
				$this->redirect(array('action'=>'index'));
			}
			else {
				$this->Session->setFlash(__('There was an issue cloning the deal', true));
				$this->redirect(array('action'=>'index'));
			}
		
		}
	
	}
	function getDealInfo($id){
		
		$dealInfo = $this->Deal->find('first',array(
		'conditions' => array('Deal.id' => $id),
		'recursive' => 0,
		'fields' => array('Deal.max_nights','Deal.id','Deal.discounted_price','Deal.reservation_type_id','Deal.deal_valid','Deal.deal_expire'),
		'limit' => 1
		));
		
		$this->set('dealInfo',json_encode($dealInfo));
	}
/*
 * Book
 * First page of deal purchase process.  Users book their dates on this page.
 * The controller checks the reservation type of the deal then takes different actions
 * based on the type.  On form submission, the controller calculates the trip start, end, nights,
 * and cost and passes to the purchase controller.
 */ 
	function book($id = null) {
		
		if($this->RequestHandler->isAjax()){
			$this->redirect(array('controller' => 'deals', 'action'=>'getDealInfo',$id));
		}
		$deal = $this->Deal->read(null, $id);
		$reservationType = $this->Deal->GetReservationType($id);
		$this->Deal->DealPurchase->set($this->data);
		if(!empty($this->data) && $this->Deal->DealPurchase->validates()){
			
			if($reservationType == Configure::read('ReservationType.Fixed')){
			
			$nights = $deal['Deal']['max_nights'];
			$date1 = new DateTime($this->data['DealPurchase']['start_date']);
			$date1->add(new DateInterval('P' . $nights . 'D'));
			$this->Session->delete('Trip');
			$this->Session->write('Trip.start_date', $this->data['DealPurchase']['start_date']);
			$this->Session->write('Trip.end_date', $this->data['DealPurchase']['end_date']);
			$this->Session->write('Trip.days', $nights);
			$this->Session->write('Trip.cost', $deal['Deal']['discounted_price']);
			$this->Session->write('Trip.id', $id);
			
			//$this->Session->read('Trip.id');
			
			$this->redirect(array('controller' => 'deals', 'action'=>'purchase',$this->Session->read('Trip.id')));
			
			}
			elseif($reservationType == Configure::read('ReservationType.Variable')) {  
			
				$date1 = new DateTime($this->data['DealPurchase']['start_date']);
				$date2 = new DateTime($this->data['DealPurchase']['end_date']);
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
				$this->Session->write('Trip.start_date', $this->data['DealPurchase']['start_date']);
				$this->Session->write('Trip.end_date', $this->data['DealPurchase']['end_date']);
				$this->Session->write('Trip.days', $days);
				$this->Session->write('Trip.cost', $cost);
					
				$this->redirect(array('controller' => 'deals', 'action'=>'purchase',$id));
				
			}
			elseif($reservationType == Configure::read('ReservationType.Set')) {
			
			}
		}
			$this->set('errors', $this->Deal->DealPurchase->validationErrors);
			
			//Load Availability and Purchase arrays
			//This could probably be refactored to just load a DealsRemaining array?
			$this->loadModel('DealAvailability');
			$availableDates = $this->DealAvailability->getAvailableDates($id);
			$this->loadModel('DealPurchase');
			$reservedDates = $this->DealPurchase->getReservations($id);

			$this->set(compact('deal'));
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
/**
 * Purchase 
 * The CC information is entered on this page and the user login is confirmed.
 */
	function purchase($id = null) {
		if(!empty($this->data)) { //Credit card is submitted
			$travelerID = $this->Session->read('Traveler.id');   //Check that they are logged in
			if(is_null($travelerID)) {
				$this->Session->setFlash(__('Please log in or create an account to make a purchase.', true));
			}
			else {//They are logged in.  
				//Validate the CC and make the purchase.
				//debug($this->Deal->DealPurchase->find('count', array('conditions' => array('DealPurchase.deal_id' => $id))));
				$this->loadModel('Traveler');
				$traveler = $this->Traveler->read(null, $travelerID);
				$this->loadModel('Transaction');
				$this->data['Transaction']['cost'] = $this->Session->read('Trip.cost');
				$this->Transaction->set($this->data);
				//Billing info was entered.  Now process the credit card
				if($this->Transaction->validates()) { //If CC info entered correctly
					$result = $this->Transaction->MakeBTTransaction($this->data, $traveler);
					//$result = Braintree_Transaction::sale($this->Transaction->buildBrainTreeTransaction($this->data, $traveler));
					if ($result->success) { //Braintree validation Success
						$purchase['DealPurchase']['deal_id'] = $id;
						$random_hash = substr(md5(uniqid(rand(), true)), -10, 10);
						$purchase['DealPurchase']['confirmation_code'] = $random_hash;
						$purchase['DealPurchase']['traveler_id'] = $travelerID;
						$purchase['DealPurchase']['start_date'] = $this->Session->read('Trip.start_date');
						$purchase['DealPurchase']['end_date'] = $this->Session->read('Trip.end_date');
						$purchase['DealPurchase']['purchase_amount'] = $this->Session->read('Trip.cost');
						$transaction = $result->transaction;
						$purchase['DealPurchase']['braintree_id'] = $transaction->id;
						$reservationType = $this->Deal->GetReservationType($id);
						//Save record for DealType 1 & 2
						if($reservationType == Configure::read('ReservationType.Fixed') || $reservationType == Configure::read('ReservationType.Variable')) {
							$this->loadModel('DealPurchase');
							if ($this->DealPurchase->save($purchase)) {
								$this->sendPurchaseMail($id, $travelerID, $this->DealPurchase->id, 'dealConfirmation');
								$this->redirect(array('controller' => 'deals', 'action'=>'confirmation',$id));
							} else {
							$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true));
							}
						}
						//Insert Passenger records for DealType 3
						elseif($reservationType == Configure::read('ReservationType.Set')) {
							$this->loadModel('Passenger');
							$purchase['Passenger']['first_name'] = $traveler['Traveler']['first_name'];
							$purchase['Passenger']['last_name'] = $traveler['Traveler']['last_name'];
							
							//use $this->Passenger so that the deal_purchase_id is inserted correctly
							if ($this->Passenger->saveAll($purchase)) {
								$this->redirect(array('controller' => 'deals', 'action'=>'confirmation',$id));
							} else {
								$this->Session->setFlash(__('The deal purchase could not be saved. Please, try again.', true),'error_flash');
							}
						}
					} 
					else { //Braintree validation failed
						
						$this->Session->setFlash(__('Purchase failed: please check your billing information again or try another card', true),'error_flash');
						/* Debugging code
						print_r("\n  message: " . $result->message);
						print_r("\nValidation errors: \n");
						print_r($result->errors->deepAll());
						print_r($expirationDate);
						*/
					} 
				
				} else {//CC info not entered correctly
					$this->Session->setFlash(__('Some of your billing information is missing or formatted incorrectly.  Please see the error messages below.', true));
				}	
			}
		}//No data submitted.  Load the page.
	//If you haven't been redirected yet, load the page
	$deal = $this->Deal->read(null, $id);
	$deal['Deal']['trip_start_date'] = $this->Session->read('Trip.start_date');
	$deal['Deal']['trip_end_date'] = $this->Session->read('Trip.end_date');
	$deal['Deal']['days'] = $this->Session->read('Trip.days');
	$deal['Deal']['cost'] = $this->Session->read('Trip.cost');
	$this->set(compact('deal')); 

	}
	
/**
 * The confirmation page is displayed after the purchase has been completed.
 */

function confirmation($id = null) {
	$deal = $this->Deal->read(null, $id);
	$deal['Deal']['cost'] = $this->Session->read('Trip.cost');
	$reservation['trip_start_date'] = $this->Session->read('Trip.start_date');
	$reservation['trip_end_date'] = $this->Session->read('Trip.end_date');
	
	$this->set(compact('deal', 'reservation'));
}
	
function deal_details($id = null) {
	$this->Deal->recursive = 2;
	$deal = $this->Deal->read(null, $id);
	$regionString = '';
	//Build list of regions linked to the deal.
	foreach($deal['Region'] as $thisDeal) {
		if($regionString == '')
			$regionString = $thisDeal['name'];
		else
			$regionString = $regionString . ', ' . $thisDeal['name'];
	}
	/*
	$this->loadModel('DealsRegion');
	$this->DealsRegion->recursive = 3;
	//$test = $this->DealsRegion->find('all', array('conditions' => array('deal_id' => $id)));
	$test = $this->Deal->find('first');
	//debug($test);
	//$test2 = $this->DealsRegion->getAssociatedRegions($id);
	*/
	
	
	$this->set(compact('deal', 'regionString'));
}
	

function editAvailabilities($id = null) {
	$deal = $this->Deal->read(null, $id);
	$dealID = $id;
	
	$this->set(compact('deal', 'dealID'));
}
/**
 * editAvailabilitiesCall takes the $id of a deal and a $date and returns the DealAvailability record
 * for that day.  It is called by the editAvailabilities page.  newCount is passed by ajax when 
 * the record is updated.
 */
function editAvailabilitiesCall($id = null, $date = null, $newCount = null) {
		
	$this->data = $this->Deal->DealAvailability->find('first', array(
	'conditions' => array(
		'DealAvailability.reservation_date' => $date,
		'DealAvailability.deal_id' => $id
	)));
	if (!is_null($newCount)) {
		$this->data['DealAvailability']['num_available'] = $newCount;
		if ($this->Deal->DealAvailability->save($this->data)) {
		} else {
			$this->Session->setFlash(__('The deal availability could not be saved. Please, try again.', true));
		}
	}
	if(empty($newCount)) {

	}
	$this->set(compact('id', 'date'));
	
}
}//End Class
?>

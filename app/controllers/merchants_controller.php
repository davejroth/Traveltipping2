<?php
class MerchantsController extends AppController {

	var $name = 'Merchants';
	var $components = array('Email', 'Notification', 'RequestHandler');
	var $helpers = array('JavaScript', 'Html', 'Form');

	
	var $paginate = array(
		'DealPurchase' => array('limit' => 10),
		'Passenger' => array('limit' => 10),
		);
	
/*
 * Takes the id of a user_detail and calls Notification to send an email to them
 */
 
	function sendNewMerchantMail($id) {
	  $Merchant = $this->Merchant->read(null,$id);
		$this->set('Merchant', $Merchant); // can this be set in notification?
	
		$this->Notification->sendNewMerchantMail($Merchant);
	}
	
/**
* Merchant Profile 
* Displays the merchant's profile information
* @param int $id unique identifier for the merchant.
*
*/
	function profile() {
	//$this->sendNewMerchantMail($id);
		$id = $this->Session->read('Merchant.id');
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant profile', true));
			$this->redirect(array('action' => 'edit'));
		}
		if (!empty($this->data)) {
			//Set ids so that they are not loaded on the page
			$this->data['Merchant']['id'] = $this->Session->read('Merchant.id');
			$this->data['User']['id'] = $this->Session->read('User.id');
			if ($this->Merchant->saveAll($this->data)) {
				$this->Session->setFlash(__('Your profile has been saved.', true));
				$this->redirect('/merchants/profile');
			} else {
				//debug($this->data);
				$this->Session->setFlash(__('Your profile could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Merchant->read(null, $id);
		}
		$countries = $this->Merchant->Country->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$this->set(compact('countries', 'businessTypes'));
	}


/**
* Merchant Deals 
* Displays the merchant's deals by status
* @param string $deal_status Status of the merchants deal: Open, Live, Past
*
*/
	function deals($deal_status) {
		$this->loadModel('Deal');
		$deals;
		if(strcmp($deal_status, "upcoming") == 0)
		{
			$deals = $this->Deal->find('all', array('conditions' => 
				array('Venue.merchant_id' => $this->Session->read('Merchant.id'), 
				"NOT" => array('Deal.deal_status_id' => 
				array(Configure::Read('Deal.Status_Listed'), Configure::Read('Deal.Status_Closed'),
				Configure::Read('Deal.Status_Cancelled'))))));
				$this->set(compact('deals'));
				$this->render('deals_upcoming');
		}
		
		if(strcmp($deal_status, "live") == 0)
		{
			$deals = $this->Deal->find('all', array('conditions' => 
			array('Deal.deal_status_id' => Configure::Read('Deal.Status_Listed'),
				'Venue.merchant_id' => $this->Session->read('Merchant.id'))));
			$count = count($deals);
			for ($i = 0; $i < $count; $i++) {
				$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
			}
			$this->set(compact('deals'));
			$this->render('deals_live');
		}
		
		if(strcmp($deal_status, "past") == 0)
		{
			$deals = $this->Deal->find('all', array('conditions' => 
			array('Deal.deal_status_id' => Configure::Read('Deal.Status_Closed'),
				'Venue.merchant_id' => $this->Session->read('Merchant.id'))));
			$count = count($deals);
				for ($i = 0; $i < $count; $i++) {
				$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
			}
			$this->set(compact('deals'));
			$this->render('deals_past');
		}
	$this->set(compact('deals'));
	}
	
/**
* Initiate
* Initiate Deal Creation
*
*/
	function initiate(){
		$this->loadModel('Venue');
		$this->loadModel('Deal');
		
		if (!empty($this->data)) {
			$this->data['Deal']['deal_status_id'] = 1;
			$this->Deal->create();
			if ($this->Deal->save($this->data)) {
				$this->redirect(array('action' => 'deals','upcoming'));
			} else {
				$this->Session->setFlash(__('The venue could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$venues = $this->Venue->find('list',array('conditions' => array('Venue.merchant_id' => $this->Session->read('Merchant.id'))));
			$this->set(compact('venues'));
		}

	}
	

	
	function create_venue(){
		$this->loadModel('Venue');
		if (!empty($this->data)) {
			$this->Venue->create();
			$this->data['Venue']['merchant_id'] = $this->Session->read('Merchant.id');
			if ($this->Venue->save($this->data)) {
				$this->Session->setFlash(__('The venue has been saved', true));
				$this->redirect(array('action' => 'initiate'));
			} else {
				$this->Session->setFlash(__('The venue could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Venue->Country->find('list');
		$businessTypes = $this->Venue->BusinessType->find('list');
		$this->set(compact('countries','businessTypes'));
		
	}
/*
 * Reservation_Paginate
 * This controller and view are not called directly.  They are loading using JS 
 * by the reservations view and contain the list of passengers who have registered
 * for the deal on the date selected by the merchant.
 */ 

	function reservation_paginate($id = null, $chosenDate = null){
		$this->loadModel('Deal');
		$deal = $this->Deal->read(null, $id);
		$conditions = array('DealPurchase.deal_id =' => $id);
		if($chosenDate != null) {
		array_push($conditions, array('DealPurchase.start_date <=' => $chosenDate, 
			'DealPurchase.end_date >=' => $chosenDate));
		//$conditions['DealPurchase.start_date <='] = $chosenDate;
		/*$conditions = array('DealPurchase.start_date <=' => $chosenDate, 
			'DealPurchase.end_date >=' => $chosenDate); */
			
		}
		if($deal['Deal']['reservation_type_id'] != 3) {
			$this->loadModel('DealPurchase');
			//$this->Paginate = array('limit' => 2);
			$reservations = $this->Paginate('DealPurchase', $conditions);	
		}
		elseif($deal['Deal']['reservation_type_id'] == 3) {
			$this->loadModel('Passenger');
			$conditions = array('DealPurchase.start_date <=' => $chosenDate, 
			'DealPurchase.end_date >=' => $chosenDate , 'Passenger.is_primary' => 1);
			
			$reservations = $this->Paginate('Passenger', $conditions);
			$secondaryPassengers = $this->Passenger->find('all', array('conditions' => array('Passenger.is_primary' => 0)));
		}
		$this->set(compact('reservations', 'deal', 'secondaryPassengers'));
	}
/**
* Merchant Signup
* Signup form for merchants
*
*/	
	function signup() {
		if (!empty($this->data)) {
			$this->Merchant->User->create();
			$this->Merchant->create();
		
			$this->data['User']['role_id'] = Configure::read('Role.Merchant_ID');
			$this->data['User']['status'] = 1;

			if ($this->Merchant->saveAll($this->data)) {
				$this->sendNewMerchantMail($this->Merchant->id);
				$this->Session->setFlash(__('Your account has been created.  Welcome to traveltipping', true));
				$this->Auth->login();
				$this->Session->write('User.new', 1); //Used for redirecting on first login
				$this->redirect(array('controller' => 'users', 'action' => 'loginredirect'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Merchant->Country->find('list');
		$users = $this->Merchant->User->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$this->set(compact('countries', 'users', 'businessTypes'));
		$this->set('errors', $this->Merchant->validationErrors);
	}
	
/**
* Reservations
*/	
	function reservations($id = null) {
		$this->loadModel('DealAvailability');
		$availableDates = $this->DealAvailability->getAvailableDates($id);
		//debug($availableDates);
		$this->loadModel('DealPurchase');
		$this->loadModel('Deal');
		$deal = $this->Deal->find('first', array('conditions' => array('Deal.id' => $id)));
		$reservedDates = $this->DealPurchase->getReservations($id);
		$reservations_arr = array();
		$i = 0;
		foreach($reservedDates as $key => $value){
			$reservations_arr[$key] = "$value";
			$i++;
		}
		$reservations_arr = json_encode($reservations_arr);


			$this->set('dealID', $id);
			$this->set(compact('availableDates', 'dates', 'reservedDates','deal','reservations_arr'));

	}

/**
 * The approve page is loaded by merchants to approve their deal.
 */
	function approve($id = null){
		$this->loadModel('Deal');
		$deal = $this->Deal->read(null, $id);
		
		$this->set(compact('deal'));
		if(!empty($this->data)) {
			$this->Merchant->set($this->data);
			if ($this->Merchant->validates()) {
				$deal['Deal']['deal_status_id'] = Configure::read('Deal.Status_Approved');
				if ($this->Deal->save($deal)) {
					$this->Session->setFlash(__('The deal has been saved', true));
					$this->redirect(array('controller' => 'merchants', 'action' => 'deals', 'upcoming'));
				} else {
					$this->Session->setFlash(__('The deal could not be saved. Please, try again.', true));
				}
				$this->Session->setFlash(__('Your deal has been approved.', true));
				//$this->redirect('/merchants/profile');
			} else {
				//debug("blah!");
				$this->Session->setFlash(__('Your deal could not be approved. Please, try again.', true));
			}
		}
	
	}
	
}
?>
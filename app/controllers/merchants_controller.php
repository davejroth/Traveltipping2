<?php
class MerchantsController extends AppController {

	var $name = 'Merchants';
	var $components = array('Email', 'Notification');
	
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
			//$this->data['User']['username'] = $this->data['User']['email'];
			$this->data['Merchant']['id'] = $this->Session->read('Merchant.id');
			$this->data['User']['id'] = $this->Session->read('User.id');
			if ($this->Merchant->saveAll($this->data)) {
				$this->Session->setFlash(__('Your profile has been saved.', true));
				$this->redirect('/merchants/profile');
			} else {
				$this->Session->setFlash(__('Your profile could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Merchant->read(null, $id);
		}
		$countries = $this->Merchant->Country->find('list');
		$users = $this->Merchant->User->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$this->set(compact('countries', 'users', 'businessTypes'));
		$this->set('merchant', $this->Merchant->read(null, $id));
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
				array('Deal.merchant_id' => $this->Session->read('Merchant.id'), 
				"NOT" => array('Deal.deal_status_id' => 
				array(Configure::Read('Deal.Status_Listed'), Configure::Read('Deal.Status_Closed'),
				Configure::Read('Deal.Status_Cancelled'))))));
		}
		
		if(strcmp($deal_status, "live") == 0)
		{
			$deals = $this->Deal->find('all', array('conditions' => 
			array('Deal.deal_status_id' => Configure::Read('Deal.Status_Listed'),
				'Deal.merchant_id' => $this->Session->read('Merchant.id'))));
			$count = count($deals);
			for ($i = 0; $i < $count; $i++) {
				$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
			}
		}
		
		if(strcmp($deal_status, "past") == 0)
		{
			$deals = $this->Deal->find('all', array('conditions' => 
			array('Deal.deal_status_id' => Configure::Read('Deal.Status_Closed'),
				'Deal.merchant_id' => $this->Session->read('Merchant.id'))));
			$count = count($deals);
				for ($i = 0; $i < $count; $i++) {
				$deals[$i]['Deal']['current_purchases'] = $this->Deal->DealPurchase->find('count',
				array('conditions' => array('DealPurchase.deal_id' => $deals[$i]['Deal']['id'])));
			}
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
			$this->Deal->create();
			if ($this->Venue->save($this->data)) {
				$this->Session->setFlash(__('The venue has been saved', true));
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
	
/**
* Reservations
* View reservations from all merchant deals
*
*/
	function reservations(){
	
		
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
			//$this->data['User']['password'] = "1949be75f0f74d49cb8c08f1152c8ae2ff563203";
			$this->data['User']['status'] = 1;

			if ($this->Merchant->saveAll($this->data)) {
				$this->sendNewMerchantMail($this->Merchant->id);
				$this->Session->setFlash(__('Your account has been created.  Welcome to traveltipping', true));
				$this->Auth->login();
				$this->Session->write('User.new', 1);
				$this->redirect(array('controller' => 'users', 'action' => 'loginredirect'));
			} else {
				$this->Session->setFlash(__('The merchant detail could not be saved. Please, try again.', true));
			}
		}
		$countries = $this->Merchant->Country->find('list');
		$users = $this->Merchant->User->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$this->set(compact('countries', 'users', 'businessTypes'));
	}
	
	
	
}
?>
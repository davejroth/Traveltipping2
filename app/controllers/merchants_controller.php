<?php
class MerchantsController extends AppController {

	var $name = 'Merchants';
	var $components = array('Email', 'Notification');
	
/**
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
	function profile($id = null) {
		
		/**
		* Retrieve merchant and associated data from Models
		*/
		$this->Merchant->recursive = 0;
		$merchant = $this->Merchant->read(null, $id);
		$countries = $this->Merchant->Country->find('list');
		$businessTypes = $this->Merchant->BusinessType->find('list');
		$users = $this->Merchant->User->find('list');
		
		/**
		* Check to see if the URL contains a valid ID
		*/
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid merchant profile', true));
			$this->redirect(array('controller' => 'pages', 'action' => 'display', 'home'));
		}
		
		/**
		* Check to make sure Merchant ID ($id) is associated with the user
		*/
		if(!$id == $this->Session->read('Merchant.id')){
				$this->Session->setFlash(__('Invalid merchant profile', true));
				$this->redirect(array('controller' => 'pages', 'action' => 'display', 'home'));
		}

		if (!empty($this->data)) {
			if ($this->Merchant->save($this->data)) {
				$updatedEmail = $this->data['User']['email'];
				$this->Merchant->User->id = $merchant['Merchant']['user_id'];
				$this->Session->setFlash(__('The merchant profile has been saved', true));
				$this->redirect(array('action' => 'profile',$id));
			} 
			else {
				$this->Session->setFlash(__('The merchant profile could not be saved. Please, try again.', true));
			}	
		}
		
		/**
		* If no POSTed Data retrieve merchant record and set to view
		*/
		if (empty($this->data)) {
			$this->data = $this->Merchant->read(null, $id);
		}
		$this->set(compact('merchant','countries', 'users', 'businessTypes'));
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
	
	}
	
/**
* Reservations
* View reservations from all merchant deals
*
*/
	function reservations(){
	
		
	}
	
	
	
}
?>
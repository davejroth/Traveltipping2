<?php
require_once(Configure::read('Braintree.location'));
require_once(Configure::read('Braintree.configuration'));




/**
 * The Transaction model is used on the deal purchase page to validate the billing info.
 */
class Transaction extends AppModel {
	var $name = 'Transaction';
	var $useTable = false;

	
	public $validate = array(
		'name' => array(
			'nameCheck' => array('rule' => 'notEmpty','message' => ' Please enter the name on the credit card'),
		),
		'address' => array(
			'addressCheck' => array('rule' => 'notEmpty','message' => ' Please enter your billing address')
		),
		'city' => array(
			'cityCheck' => array('rule' => 'notEmpty','message' => ' Please enter the city of your billing address')
		),
		'state' => array(
			'stateCheck' => array('rule' => 'notEmpty','message' => ' Please enter the state of your billing address.')
		),
		'zip' => array(
			'zipCheck' => array('rule' => 'notEmpty','message' => ' Please enter the zip of your billing address')
		),
		'cc_number' => array(
			'ccCheck' => array('rule' => 'notEmpty','message' => 'Please enter your credit card number'),
			'ccLength' => array('rule' => array('between', 15, 16), 'message' => 'Your credit card should be 16 numbers, without spaces'),
			'ccNumeric' => array('rule' => 'numeric', 'message' => 'Please enter your credit card number without any spaces or dashes')
		),
		'cvv' => array(
			'cvvCheck' => array('rule' => 'notEmpty','message' => ' Please enter the 2 - 3 digit CVV number located on the back of your credit card'),
			'cvvLength' => array('rule' => array('between', 2, 4), 'message' => 'Your CVV number should be between 2 and 4 digits'),
			'cvvNumeric' => array('rule' => 'numeric', 'message' => 'Please enter your CVV number without any spaces or dashes')
		),
		'tos' => array(
			'tosCheck' => array('rule' => array('comparison', '!=', 0),  'message' => 'Please agree to TravelTipping\'s Terms of Service',),
		),
	);
	/**
	 * buildBrainTreeTransaction
	 * Builds a formatted array that is required for BrainTree's transactions
	 */
	function buildBrainTreeTransaction($data, $traveler) {
		return array(
					'amount' => $data['Transaction']['cost'], 
					//'merchantAccountId' => 'a_merchant_account_id', This needs to be input
					'creditCard' => array(
						'number' => $data['Transaction']['cc_number'],
						'expirationDate' => $data['Transaction']['expiration_month'] . '/' . $data['Transaction']['expiration_year'],
						'cardholderName' => $data['Transaction']['name'],
						'cvv' => $data['Transaction']['cvv']
						),
					'customer' => array(
						'firstName' => $traveler['Traveler']['first_name'],
						'lastName' => $traveler['Traveler']['last_name'],
						'email' => $traveler['User']['email'],
						'id' => $traveler['Traveler']['id'],
					  ),
					  'billing' => array(
						'firstName' => $data['Transaction']['name'],
						//'lastName' => 'Smith',
						'streetAddress' => $data['Transaction']['address'],
						'locality' => $data['Transaction']['city'],
						'region' => $data['Transaction']['state'],
						'postalCode' => $data['Transaction']['zip'],
						'countryCodeAlpha2' => 'US'
						),
					  'options' => array(
						'submitForSettlement' => true
					)
		);
	}
	/**
	 * makeBTTransaction
	 * Uses BrainTree API to make the transaction
	 */
	function makeBTTransaction($data, $traveler) {
		return Braintree_Transaction::sale($this->buildBrainTreeTransaction($data, $traveler));
	}
}

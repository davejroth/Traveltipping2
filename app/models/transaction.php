<?php
/**
 * The Transaction model is used on the deal purchase page to validate the billing info.
 */
class Transaction extends AppModel {
	var $name = 'Transaction';
	var $useTable = false;

	
	public $validate = array(
		'name' => array(
			'nameCheck' => array('rule' => 'notEmpty','message' => ' Please enter the name on the credit card.'),
		),
		'address' => array(
			'addressCheck' => array('rule' => 'notEmpty','message' => ' Please enter your billing address.')
		),
		'city' => array(
			'cityCheck' => array('rule' => 'notEmpty','message' => ' Please enter the city of your billing address.')
		),
		'state' => array(
			'stateCheck' => array('rule' => 'notEmpty','message' => ' Please enter the state of your billing address.')
		),
		'zip' => array(
			'zipCheck' => array('rule' => 'notEmpty','message' => ' Please enter the zip of your billing address.')
		),
		'cc_number' => array(
			'ccCheck' => array('rule' => 'notEmpty','message' => 'Please enter your credit card number.'),
			'ccLength' => array('rule' => array('between', 15, 16), 'message' => 'Your credit card should be 16 numbers, without spaces.'),
			'ccNumeric' => array('rule' => 'numeric', 'message' => 'Please enter your credit card number without any spaces or dashes.')
		),
		'ccv' => array(
			'ccvCheck' => array('rule' => 'notEmpty','message' => ' Please enter the 2 - 3 digit CCV number located on the back of your credit card.'),
			'ccvLength' => array('rule' => array('between', 2, 3), 'message' => 'Your CCV number should be either 2 or 3 digits.'),
			'ccvNumeric' => array('rule' => 'numeric', 'message' => 'Please enter your CCV number without any spaces or dashes.')
		)
	); 
}

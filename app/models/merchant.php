<?php
class Merchant extends AppModel {
	var $name = 'Merchant';
	var $displayField = 'business_name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Country' => array(
			'className' => 'Country',
			'foreignKey' => 'country_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'BusinessType' => array(
			'className' => 'BusinessType',
			'foreignKey' => 'business_type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'Deal' => array(
			'className' => 'Deal',
			'foreignKey' => 'merchant_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);
	
var $validate = array(
		'business_name' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter a name for your business',),
		),
		'business_type_id' => array(
			'numeric' => array('rule' => array('numeric')),
		),
		'address' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter an address',),
		),
		'second_address' => array(
			//Second address field is optional
			//'notempty' => array('rule' => array('notempty'),'message' => 'Please enter a state or province',),
		),
		'city' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter a city',),
		),
		'state' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter a state or province',),
		),
		'postal_code' => array(
			'postal' => array('rule' => array('postal'), 'message' => 'Please enter a valid zip',),
		),
		'country_id' => array(
			'numeric' => array('rule' => array('numeric')),
		),
		'website' => array(
			//Website field is optional
			//'url' => array('rule' => array('url'),'message' => 'Please enter a valid url',),
		),
		'first_name' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter your first name'),
		),
		'last_name' => array(
			'notempty' => array('rule' => array('notempty'),'message' => 'Please enter your last name',),
		),
		'phone' => array(
			//Allow empty phone numbers or various formatting
			//'phone' => array('rule' => array('phone'),'message' => 'Please enter your phone number',),
		),
		'user_id' => array(
			'numeric' => array('rule' => array('numeric')),
		),
	);


}

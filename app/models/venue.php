<?php
class Venue extends AppModel {
	var $name = 'Venue';
	var $displayField = 'name';
	var $validate = array(
		'country_id' => array(
			'numeric' => array('rule' => array('numeric'),
			),
		),
		'merchant_id' => array(
			'numeric' => array('rule' => array('numeric'),
			),
		),
		'name' => array(
            'nameCheck' => array('rule' => 'notEmpty','message' => 'Please enter the name of the business being advertised'),
		),
		'email' => array(
            'emailCheck' => array('rule' => 'notEmpty','message' => 'Please enter the contact email for this deal'),
		),
		'address1' => array(
            'address1Check' => array('rule' => 'notEmpty','message' => 'Please enter an address'),
		),
		'city' => array(
            'cityCheck' => array('rule' => 'notEmpty','message' => 'Please enter a city'),
		),
		'state' => array(
            'stateCheck' => array('rule' => 'notEmpty','message' => 'Please enter a state/province'),
		),
		//'postal_code' => array(
          //  'postal_codeCheck' => array('rule' => 'notEmpty','message' => 'Please enter a postal code'),
		//),
		'country_id' => array(
            'country_idCheck' => array('rule' => 'notEmpty','message' => 'Please select your country'),
		),
		'business_type_id' => array(
            'business_typeCheck' => array('rule' => 'notEmpty','message' => 'Please enter a business type for the deal'),
		),
		'website' => array(
            'websiteCheck' => array('rule' => 'notEmpty','message' => 'Please enter a valid website'),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
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
		),
		'Merchant' => array(
			'className' => 'Merchant',
			'foreignKey' => 'merchant_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'Deal' => array(
			'className' => 'Deal',
			'foreignKey' => 'venue_id',
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

}

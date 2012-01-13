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
            'nameCheck' => array('rule' => 'notEmpty','message' => ' Please enter a name for the deal.'),
		),
		'email' => array(
            'emailCheck' => array('rule' => 'notEmpty','message' => ' Please enter an email for the deal.'),
		),
		'address1' => array(
            'address1Check' => array('rule' => 'notEmpty','message' => ' Please enter an address for the deal.'),
		),
		'city' => array(
            'cityCheck' => array('rule' => 'notEmpty','message' => ' Please enter a city for the deal.'),
		),
		'state' => array(
            'stateCheck' => array('rule' => 'notEmpty','message' => ' Please enter a state or province for the deal.'),
		),
		'postal_code' => array(
            'postal_codeCheck' => array('rule' => 'notEmpty','message' => ' Please enter a postal or area code for the deal.'),
		),
		'country_id' => array(
            'country_idCheck' => array('rule' => 'notEmpty','message' => ' Please enter a country for the deal.'),
		),
		'business_type_id' => array(
            'business_typeCheck' => array('rule' => 'notEmpty','message' => ' Please enter a business type for the deal.'),
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

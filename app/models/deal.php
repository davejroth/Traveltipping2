<?php
class Deal extends AppModel {
	var $name = 'Deal';
	var $displayField = 'title';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Merchant' => array(
			'className' => 'Merchant',
			'foreignKey' => 'merchant_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'DealStatus' => array(
			'className' => 'DealStatus',
			'foreignKey' => 'deal_status_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ReservationType' => array(
			'className' => 'ReservationType',
			'foreignKey' => 'reservation_type_id',
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
		)
	);

	var $hasMany = array(
		'DealAvailability' => array(
			'className' => 'DealAvailability',
			'foreignKey' => 'deal_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'DealPurchase' => array(
			'className' => 'DealPurchase',
			'foreignKey' => 'deal_id',
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


	var $hasAndBelongsToMany = array(
		'Category' => array(
			'className' => 'Category',
			'joinTable' => 'deals_categories',
			'foreignKey' => 'deal_id',
			'associationForeignKey' => 'category_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'Region' => array(
			'className' => 'Region',
			'joinTable' => 'deals_regions',
			'foreignKey' => 'deal_id',
			'associationForeignKey' => 'region_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		)
	);

}

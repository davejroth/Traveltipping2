<?php
class Deal extends AppModel {
	var $name = 'Deal';
	var $displayField = 'title';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'MerchantDetail' => array(
			'className' => 'MerchantDetail',
			'foreignKey' => 'merchant_detail_id',
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
		'DealType' => array(
			'className' => 'DealType',
			'foreignKey' => 'deal_type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Destination' => array(
			'className' => 'Destination',
			'foreignKey' => 'destination_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'City' => array(
			'className' => 'City',
			'foreignKey' => 'city_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	 
}
?>
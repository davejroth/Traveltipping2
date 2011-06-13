<?php
class BusinessType extends AppModel {
	var $name = 'BusinessType';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $hasMany = array(
		'MerchantDetail' => array(
			'className' => 'MerchantDetail',
			'foreignKey' => 'business_type_id',
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

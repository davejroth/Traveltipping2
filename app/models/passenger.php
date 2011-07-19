<?php
class Passenger extends AppModel {
	var $name = 'Passenger';
	var $displayField = 'first_name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Country' => array(
			'className' => 'Country',
			'foreignKey' => 'country_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'DealPurchase' => array(
			'className' => 'DealPurchase',
			'foreignKey' => 'deal_purchase_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	/* This mysql statement */
	var $virtualFields = array(
		'age' => "SELECT DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(birthday, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(birthday, '00-%m-%d')) "
	);
}

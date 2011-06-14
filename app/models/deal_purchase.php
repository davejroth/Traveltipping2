<?php
class DealPurchase extends AppModel {
	var $name = 'DealPurchase';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Deal' => array(
			'className' => 'Deal',
			'foreignKey' => 'deal_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Traveler' => array(
			'className' => 'Traveler',
			'foreignKey' => 'traveler_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
?>
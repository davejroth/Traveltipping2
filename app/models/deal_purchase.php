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
	
		var $hasMany = array(
		'Passenger' => array(
			'className' => 'Passenger',
			'foreignKey' => 'deal_purchase_id',
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
	
		var $virtualFields = array(
    'nights' => 'DATEDIFF(end_date, start_date)'
	);

}
?>
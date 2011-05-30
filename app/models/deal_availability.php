<?php
class DealAvailability extends AppModel {
	var $name = 'DealAvailability';
	var $displayField = 'reservation_date';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Deal' => array(
			'className' => 'Deal',
			'foreignKey' => 'deal_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
?>
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
		'UserDetail' => array(
			'className' => 'UserDetail',
			'foreignKey' => 'user_detail_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
?>
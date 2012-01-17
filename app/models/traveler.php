<?php
class Traveler extends AppModel {
	var $name = 'Traveler';
	var $displayField = 'first_name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'State' => array(
			'className' => 'State',
			'foreignKey' => 'state_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	var $hasMany = array(
		'DealPurchase' => array(
			'className' => 'DealPurchases',
			'foreignKey' => 'traveler_id',
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
	
	//There is nothing to protect against SQL injection.  Cake does that automatically
	public $validate = array(
		'first_name' => array(
            'nameCheck' => array('rule' => 'notEmpty','message' => ' Please enter your first name'),
		),
		'last_name' => array(
            'nameCheck' => array('rule' => 'notEmpty','message' => ' Please enter your last name')
        )
	); 
	

}
?>
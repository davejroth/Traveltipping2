<?php
class Region extends AppModel {
	var $name = 'Region';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $hasAndBelongsToMany = array(
		'Deal' => array(
			'className' => 'Deal',
			'joinTable' => 'deals_regions',
			'foreignKey' => 'region_id',
			'associationForeignKey' => 'deal_id',
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

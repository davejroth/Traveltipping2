<?php
/*
 * DealAvailability represents the number of available Deal Purchases (confirm this for deal type 3)
 * Every day within the range of the deal_valid and deal_expire should have a max number associated with it
 */
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
/* 
 *  getAvailableDates
 *  Returns an array of the max openings(taken from Deal_Availabilities table)
 *  @params $id of a deal
 *  @returns Array in which keys are possible dates and values are maximum number of deal purchases.
 *  Note: For type 3, only primary passengers count towards this count - This needs to be confirmed.
 */
	function getAvailableDates($id) {
		$availableDates = array(); //return array
		//Populate array with all possible dates
		App::import('model','Deal');
		$deal = new Deal();
		$thisDeal = $deal->find('first', array('id' => $id));
		$tripStart = $thisDeal['Deal']['deal_valid'];
		$tripEnd = $thisDeal['Deal']['deal_expire'];
		$tripStart = date('Y-m-d', strtotime($tripStart. ' - 1 days')); //Take one day off so that last day is added
		do {
		$tripStart = date('Y-m-d', strtotime($tripStart. ' + 1 days'));
			$availableDates[$tripStart] = "";
			
		}while(strcmp($tripStart,$tripEnd) != 0);
		
		$this->recursive = -1;
		$storedAvailability = $this->find('all');
		
		foreach($storedAvailability as $availableDate) {
			$availableDates[$availableDate['DealAvailability']['reservation_date']] = $availableDate['DealAvailability']['num_available'];
		}
	
		return $availableDates;
	}
}
?>
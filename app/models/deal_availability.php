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
	
	/*public $validate = array(
		'average_reservations' => array(
			'passwordCheck' => array('rule' => 'dateCheck', 'message' => 'If you changed the Deal Live or Deal Expire dates, please add an average num availablities for the new nights')
		)
    ); */
	/**
	 * dateCheck checks to see if new DealAvailability records will be created (deal_live decreases or deal_expire increases and neither == null)
     * If new records are being created, numAvailable must be supplied.
     */	 
	function dateCheck()
	{
		App::import('model','Deal');
		$deal = new Deal();
		$savedDeal = $deal->find('first', array('conditions' => array('Deal.id' => $this->data['Deal']['id'])));
		$oldValidDate = strtotime($savedDeal['Deal']['deal_valid']);
		$oldExpiredDate = strtotime($savedDeal['Deal']['deal_expire']);
		$newValidDateString = $this->data['Deal']['deal_valid']['year'] . '-' . $this->data['Deal']['deal_valid']['month'] . '-' . $this->data['Deal']['deal_valid']['day']; 
		$newValidDate = strtotime($newValidDateString);
		$newExpiredDateString = $this->data['Deal']['deal_expire']['year'] . '-' . $this->data['Deal']['deal_expire']['month'] . '-' . $this->data['Deal']['deal_expire']['day']; 
		$newExpiredDate = strtotime($newExpiredDateString);
			
		if($this->data['DealAvailability']['average_reservations'] != "") {
			return true;
		}
		elseif($oldValidDate > $newValidDate 
			|| $oldExpiredDate < $newExpiredDate){
			return false;
		}
		else {
			return true;
		}
	}
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
		$thisDeal = $deal->find('first', array('conditions' => array('Deal.id' => $id)));
		$tripStart = $thisDeal['Deal']['deal_valid'];
		$tripEnd = $thisDeal['Deal']['deal_expire'];
		$tripStart = date('Y-m-d', strtotime($tripStart. ' - 1 days')); //Take one day off so that last day is added
		do {
		$tripStart = date('Y-m-d', strtotime($tripStart. ' + 1 days'));
			$availableDates[$tripStart] = "";
			
		}while(strcmp($tripStart,$tripEnd) != 0);
		$this->recursive = -1;
		$storedAvailability = $this->find('all', array('conditions' => array('DealAvailability.deal_id' => $id)));
		
		foreach($storedAvailability as $availableDate) {
			$availableDates[$availableDate['DealAvailability']['reservation_date']] = $availableDate['DealAvailability']['num_available'];
		}
	
		return $availableDates;
	}
}
?>
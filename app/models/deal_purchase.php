<?php
/**
  * A DealPurchase represents a traveler purchasing a deal for one or more passengers
  */
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
	
	public $validate = array(
		'start_date' => array(
			'startCheck' => array('rule' => 'notEmpty', 'message' => 'Please choose a start date.')
		),
		'end_date' => array(
			'endCheck' => array('rule' => 'notEmpty', 'message' => 'Please choose an end date.')
		)	
    );
	
	var $virtualFields = array(
    'nights' => 'DATEDIFF(end_date, start_date)'
	);
/* 
 *  getReservations
 *  Returns an array of the reservations(taken from Passengers table)
 *  @params $id of a deal
 *  @returns Array in which keys are possible dates and values are total number of deal_purchases.
 *  Note: For type 3, only primary passengers count towards this count - This needs to be confirmed.
 */
	function getReservations($id) {
		$reservedDates = array(); //return array
		//Populate array with all possible dates
		App::import('model','Deal');
		$deal = new Deal();
		$thisDeal = $deal->find('first', array('conditions' => array('Deal.id' => $id)));

		$tripStart = $thisDeal['Deal']['deal_valid'];
		$tripEnd = $thisDeal['Deal']['deal_expire'];
		$tripStart = date('Y-m-d', strtotime($tripStart. ' - 1 days')); //Take one day off so that last day is added
		do {
		$tripStart = date('Y-m-d', strtotime($tripStart. ' + 1 days'));
			$reservedDates[$tripStart] = 0;
			
		}while(strcmp($tripStart,$tripEnd) != 0);
		
		$this->recursive = -1;
		$storedReservations = $this->find('all',  array('conditions' => array('deal_id' => $id)));
		
		foreach($storedReservations as $currentReservation) {
			$reservationStart = $currentReservation['DealPurchase']['start_date'];
			$reservationEnd = $currentReservation['DealPurchase']['end_date'];
			$reservationStart = date('Y-m-d', strtotime($reservationStart. ' - 1 days')); //Take one day off so that last day is added
			do {
				$reservationStart = date('Y-m-d', strtotime($reservationStart. ' + 1 days'));
				$reservedDates[$reservationStart]++;
			
			}while(strcmp($reservationStart,$reservationEnd) != 0);
			
			//$reservedDates[$availableDate['DealAvailability']['reservation_date']] = $availableDate['DealAvailability']['num_available'];
		}
	
		return $reservedDates;
	}
	/**
	 * Similar to getReservations  
	 * @params id of deal
	 * @returns an array of the valid dates with true/false depending on whether there is an available reservation
	 */
	function getDatesFull($id) {
		$datesFull = array();
		$currentReservations = $this->getReservations($id);
		//debug($currentReservations);
		App::import('model','DealAvailability');
		$dealAvailability = new DealAvailability();
		$currentAvailabilities = $dealAvailability->getAvailableDates($id);
		
		$dates = array_keys($currentReservations);
		$length = count($dates);
		
		for($i = 0; $i < $length; $i++){
			if($currentReservations[$dates[$i]] < $currentAvailabilities[$dates[$i]]) {
				$datesFull[$dates[$i]] = false; //Not full
			}
			else {
				$datesFull[$dates[$i]] = true; //Reservation is full
			}
		}
		return $datesFull;
	}
		
}
?>
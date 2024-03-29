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
			'startCheck' => array('rule' => 'notEmpty', 'message' => '<div class="error_notification notification"><p>Please choose a start and end date.</p></div>')
		),
		'end_date' => array(
			'endCheck' => array('rule' => 'notEmpty', 'message' => '<div class="error_notification notification"><p>Please choose a start and end date.</p></div>')
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
			$reservationEnd = date('Y-m-d', strtotime($reservationEnd. ' - 1 days')); //Take one day off so that the last day is not counted as a reservation
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
	
	function numPurchases($dealId) {
		return $this->find('count', array('conditions' => array('DealPurchase.deal_id' => $dealId)));
	}
	
	/**
	 * getTotalSales
	 * Returns the dollar amount of all deals purchased
	 */
	function getTotalSales($dealId) {
		$totalSalesArray = $this->query('SELECT SUM(purchase_amount) FROM `deal_purchases` WHERE deal_id = ' . $dealId);
		$totalSales = $totalSalesArray[0][0]['SUM(purchase_amount)']; //CakePHP returns the SQL result in a funky format
		return $totalSales;
	}
	//After each deal purchase, check if the deal purchase limit has been reached and close the deal if necessary.
	function afterSave($created) {
		App::import('model','Deal');
		$deal = new Deal();
		$thisDeal = $deal->findById($this->data['DealPurchase']['deal_id']);

		$purchaseCount = $this->numPurchases($thisDeal['Deal']['id']);
		$purchasePad = $thisDeal['Deal']['purchase_pad'];
		$maxPurchases = $thisDeal['Deal']['max_purchases'];
		
		//Check to make sure that purchasePad + purchaseCount is not greater than the maxPurchases.  Decrease purchasePad if necessary. 
		if($purchasePad != 0 && $purchaseCount + $purchasePad >= $maxPurchases) {
			$thisDeal['Deal']['purchase_pad'] = $maxPurchases - $purchaseCount - 1; //Make sure there is at least one actual purchase left
			$deal->save($thisDeal);
		}

		if($thisDeal['Deal']['is_timed'] == 1 && $purchaseCount >= $maxPurchases) {
			$thisDeal['Deal']['max_purchases'] = $maxPurchases + 10;
		
		}

		if($thisDeal['Deal']['is_timed'] == 0 && $purchaseCount >= $maxPurchases) {
			$thisDeal['Deal']['deal_status_id'] = Configure :: Read('Deal.Status_Closed');
			$deal->save($thisDeal);
			
			//These are imported for the email
			App::import('Component', 'Notification');
			App::import('Component', 'Email');
			App::import('Core', 'Controller');
			App::import('Model', 'Merchant');
			App::import('Model', 'Venue');
			
			$merchant = new Merchant();
			$venue = new Venue();
			
			$notification = new NotificationComponent();
			$controller = new Controller();
			$notification->Email = new EmailComponent(); 
			$notification->Email->initialize($controller);
			
			//Send notification to merchant
			$thisVenue = $venue->findById($thisDeal['Deal']['venue_id']);
			$thisMerchant = $merchant->findById($thisVenue['Merchant']['id']);
			$controller->set(array('Deal' => $thisDeal, 'Merchant' => $thisMerchant));
			$notification->sendHtmlMerchantMail($thisMerchant, 'dealClose'); 
			$notification->sendHtmlAmMail('dealClose');
			}
	
	}
		
}
?>
<?php
class Deal extends AppModel {
	var $name = 'Deal';
	var $displayField = 'title';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Venue' => array(
			'className' => 'Venue',
			'foreignKey' => 'venue_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'DealStatus' => array(
			'className' => 'DealStatus',
			'foreignKey' => 'deal_status_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ReservationType' => array(
			'className' => 'ReservationType',
			'foreignKey' => 'reservation_type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'DealAvailability' => array(
			'className' => 'DealAvailability',
			'foreignKey' => 'deal_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
		'DealPurchase' => array(
			'className' => 'DealPurchase',
			'foreignKey' => 'deal_id',
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


	var $hasAndBelongsToMany = array(
		'Category' => array(
			'className' => 'Category',
			'joinTable' => 'deals_categories',
			'foreignKey' => 'deal_id',
			'associationForeignKey' => 'category_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'Region' => array(
			'className' => 'Region',
			'joinTable' => 'deals_regions',
			'foreignKey' => 'deal_id',
			'associationForeignKey' => 'region_id',
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
	public $validate = array(
		'average_reservations' => array(
            'reservationCheck' => array('rule' => 'notEmpty','message' => ' Please enter an average reservation count.'),
		),
		'deal_expire' => array(
			'expireCheck' => array('rule' => 'expireCheck', 'message' => 'Please make sure that the Deal Expire date is greater than the Deal Valid date.')
		),
		'deal_close' => array(
			'closeCheck' => array('rule' => 'closeCheck', 'message' => 'Please make sure that the Deal Close date is greater than the Deal Live date.')
		),
		'name' => array(
			'nameCheck' => array('rule' => 'notEmpty', 'message' => 'Please create a name for this deal')
		)
    );
	
	/*
	 * expireCheck
	 * Checks to make sure that the expire date is greater than the deal valid date.
	 */
	function expireCheck()
	{
		$newValidDate = strtotime($this->data['Deal']['deal_valid']);
		$newExpireDate = strtotime($this->data['Deal']['deal_expire']);
		if($newExpireDate > $newValidDate) {
			return true;
		}
		else {
			return false;
		}
	}
	/*
	 * closeCheck
	 * Checks to make sure that the close date is greater than the deal live date.
	 */
	function closeCheck()
	{
		$newLiveDate = strtotime($this->data['Deal']['deal_live']);
		$newCloseDate = strtotime($this->data['Deal']['deal_close']);
			
		if($newCloseDate > $newLiveDate) {
			return true;
		}
		else {
			return false;
		}
	}
	
	/*
	 * Override paginateCount so that it counts the number of deals for pagination on the deals index page correctly.  This was a huge PITA
	 */
	public function paginateCount($conditions = null, $recursive = 0, $extra = array()) {

		$results = $this->find('all', array('group' => 'Deal.id', 'conditions' => array($conditions)));
		return count($results);
	}

	
	/**
	 * Override paginate function.  CakePHP has a bug in which it doesn't pass sort by parameters for derived fields.  The sort by
	 * is passed in using $extra array and loaded into $order if there is something.
	 */
	function paginate($conditions, $fields, $order, $limit, $page = 1, $recursive = null, $extra = array()) {
	   if(empty($order) && !empty($extra['passit'])){  //This prevents an error when hitting the default page with no sorting
			$order = array($extra['passit']['sort'] => $extra['passit']['direction']);
		}
    return $this->find('all', compact('conditions', 'fields', 'order', 'limit', 'page', 'recursive'));
	} 
	 
	/**
	 * GetReservationType returns the reservationtype of the deal id passed to it
	 */
	function getReservationType($id) {
		$thisDeal = $this->find('first', array('conditions' => array('Deal.id' => $id)));
		return $thisDeal['Deal']['reservation_type_id'];
	}
	
	/**
	 * updateAvailabilityRecords updates the DealAvailability records when the deal_live or deal_expire date change.  It builds an array
	 * of the new dates and an array of the saved dates and runs a dif on them.  Records that are in the new array but not the old are
	 * added while records in the old array that are not in the new array are deleted.
	 * $id is the id of the deal that is being saved
	 * $data is deal data that was entered
	 */
	function updateAvailabilityRecords($id, $data) {
		$savedDeal = $this->read(null, $id);
		$oldStart = $savedDeal['Deal']['deal_valid'];
		$oldEnd = $savedDeal['Deal']['deal_expire'];
		//Convert cakePHP input data to match stored date data.
		$newStart = $data['Deal']['deal_valid']['year'] . '-' . $data['Deal']['deal_valid']['month'] . '-' . $data['Deal']['deal_valid']['day']; 
		$newEnd = $data['Deal']['deal_expire']['year'] . '-' . $data['Deal']['deal_expire']['month'] . '-' . $data['Deal']['deal_expire']['day']; 
		//If Deal dates have changed, make sure corresponding records are created/deleted
		// Does this also need to check if there are any DealAvailbility records?
		if($oldStart != $newStart || $oldEnd != $newEnd) { 
			$currentDate = date('Y-m-d', strtotime($newStart. ' - 1 days'));
			$newDates= array(); //Build array of all the new dates
			do {
				$currentDate = date('Y-m-d', strtotime($currentDate. ' + 1 days'));
				$newDates[$currentDate] = "";
			}while(strcmp($currentDate,$newEnd) != 0);
			$dealAvailability = new DealAvailability();
			$oldRecords = $dealAvailability->find('all', array('conditions' => array('deal_id' => $id), 'recursive' => -1));
			$oldDates = array();
			//Mash the two together - if it's still in $oldRecords, delete it.  If it's in $newDates, add it.
			
			for($i = 0; $i < count($oldRecords); $i++) {
				$oldDates[$oldRecords[$i]['DealAvailability']['reservation_date']] = "";
			}
			//Add new records
			$datesToAdd = array_keys(array_diff_key($newDates, $oldDates));
			$availabilityRecord['DealAvailability']['deal_id'] = $id;
			$availabilityRecord['DealAvailability']['num_available'] = $data['Deal']['average_reservations'];
			foreach ($datesToAdd as $date) {
				$dealAvailability = new DealAvailability();
				$availabilityRecord['DealAvailability']['reservation_date'] = $date;
				$dealAvailability->create();
				$dealAvailability->save($availabilityRecord);
			}
			//Delete old records
			$datesToDelete = array_keys(array_diff_key($oldDates, $newDates));
			foreach ($datesToDelete as $date) {
				$dealAvailability = new DealAvailability();
				$deleteMe = $dealAvailability->find('first', array('conditions' => array('deal_id' => $id, 'reservation_date' => $date), 'recursive' => -1));
				$dealAvailability->delete($deleteMe['DealAvailability']['id']);
			}
			
		}
		
		//If the average_reservations amount changed, update all availability records with the old number of average_reservations
		if($savedDeal['Deal']['average_reservations'] != $data['Deal']['average_reservations']) {
			$dealAvailability = new DealAvailability();
			$oldRecords = $dealAvailability->find('all', array('conditions' => array('deal_id' => $id), 'recursive' => -1));
			foreach($oldRecords as $thisRecord) {
				if($thisRecord['DealAvailability']['num_available'] == $savedDeal['Deal']['average_reservations']) {
					$thisRecord['DealAvailability']['num_available'] = $data['Deal']['average_reservations'];
					$dealAvailability->save($thisRecord);
				}
				
			}
		}
	}
	

}

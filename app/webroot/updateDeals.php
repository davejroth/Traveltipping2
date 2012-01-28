<?php
/**
 *	Cron.php - This file begins with a standard cron startup - custom code is below.  The file is run every night at 12:05 AM (?) 
 *  and automatically opens or closes deals based on the deal's start/end date.  There is also a email that is sent to AMs and 
 *  merchants.  It only makes deals live that are scheduled to go live on the day that it is run, so if it misses a day, deals that 
 *  should be live will not be made live.  This is to prevent it from making a deal live that was closed intentionally before it's close date.
 *  Revisions:
 *  12/28/11 	David Roth		Added logic to only make deals live if their current status was "Approved by Merchant"
 * Licensed under GNU GPL License. 
 */

/**
  Standard CakePHP app/webroot/index.php
*/
	if (!defined('DS')) {
		define('DS', DIRECTORY_SEPARATOR);
	}

	if (!defined('ROOT')) {
		define('ROOT', dirname(dirname(dirname(__FILE__))));
	}

	if (!defined('APP_DIR')) {
		define('APP_DIR', basename(dirname(dirname(__FILE__))));
	}

	if (!defined('CAKE_CORE_INCLUDE_PATH')) {
		define('CAKE_CORE_INCLUDE_PATH', ROOT);
	}


	if (!defined('WEBROOT_DIR')) {
		define('WEBROOT_DIR', basename(dirname(__FILE__)));
	}
	if (!defined('WWW_ROOT')) {
		define('WWW_ROOT', dirname(__FILE__) . DS);
	}
	if (!defined('CORE_PATH')) {
		if (function_exists('ini_set') && ini_set('include_path', CAKE_CORE_INCLUDE_PATH . PATH_SEPARATOR . ROOT . DS . APP_DIR . DS . PATH_SEPARATOR . ini_get('include_path'))) {
			define('APP_PATH', null);
			define('CORE_PATH', null);
		} else {
			define('APP_PATH', ROOT . DS . APP_DIR . DS);
			define('CORE_PATH', CAKE_CORE_INCLUDE_PATH . DS);
		}
	}
	if (!include(CORE_PATH . 'cake' . DS . 'bootstrap.php')) {
		trigger_error("CakePHP core could not be found.  Check the value of CAKE_CORE_INCLUDE_PATH in APP/webroot/index.php.  It should point to the directory containing your " . DS . "cake core directory and your " . DS . "vendors root directory.", E_USER_ERROR);
	}
	if (isset($_GET['url']) && $_GET['url'] === 'favicon.ico') {
		return;
	} else {

	  /**
	      Cron custom code start here
	  */
		//This is imported to check deal live/close dates and to notify the appropriate merchants.
	  	App::import('Model','Deal');
		App::import('Model', 'Merchant');
		App::import('Model', 'Venue');
		$deal = new Deal();
		$merchant = new Merchant();
		$venue = new Venue();
		
		//These are imported for the email
		App::import('Component', 'Notification');
		App::import('Component', 'Email');
		App::import('Core', 'Controller');
		
		$notification = new NotificationComponent();
		$controller = new Controller();
		$notification->Email = new EmailComponent(); 
		$notification->Email->initialize($controller);
			
	
		//Open up new deals
		$today = date('Y-m-d');
		//Pull all deals to make live
		$dealsToOpen = $deal->find('all', array('conditions' => array('Deal.deal_live' => $today, 'Deal.deal_status_id' => Configure::Read('Deal.Status_Approved'))));
		$newLiveDeals = array(); //This array keeps track of all the deals that were made live
		//Check for all deals that should be live and make sure they are
		foreach ($dealsToOpen as $thisDeal) {
			if($thisDeal['Deal']['deal_status_id'] != Configure::Read('Deal.Status_Listed')) {
				$thisDeal['Deal']['deal_status_id'] = Configure::Read('Deal.Status_Listed');
				$deal->save($thisDeal);
				array_push($newLiveDeals, $thisDeal);
				
				//Send notification to merchant
				$thisVenue = $venue->findById($thisDeal['Deal']['venue_id']);
				$thisMerchant = $merchant->findById($thisVenue['Merchant']['id']);
				$controller->set(array('Deal' => $thisDeal, 'Merchant' => $thisMerchant));
				//$notification->sendHtmlMerchantMail($thisMerchant, 'dealLive'); 	
				
			}
		}
		$newClosedDeals = array();
		//Close any live deals that are expired
		$allLiveDeals = $deal->find('all', array('conditions' => array('Deal.deal_status_id' => Configure::Read('Deal.Status_Listed'))));
		foreach ($allLiveDeals as $thisDeal) {
			if($thisDeal['Deal']['deal_close'] == $today) {
				$thisDeal['Deal']['deal_status_id'] = Configure::Read('Deal.Status_Closed');
				$deal->save($thisDeal);
				array_push($newClosedDeals, $thisDeal);
			
				//Send notification to merchant
				$thisVenue = $venue->findById($thisDeal['Deal']['venue_id']);
				$thisMerchant = $merchant->findById($thisVenue['Merchant']['id']);
				$controller->set(array('Deal' => $thisDeal, 'Merchant' => $thisMerchant));
				//$notification->sendHtmlMerchantMail($thisMerchant, 'dealClose'); 
			}
		
		}
		
		//Send AM update
		$controller->set(compact('newLiveDeals', 'newClosedDeals'));
		$notification->sendHtmlAMMail('dealsChanged'); 	
		
		
	}
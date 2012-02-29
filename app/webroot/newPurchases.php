<?php

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

		/* Cron custom code start here */
		
		//This is imported to check deal live/close dates and to notify the appropriate merchants.
	  	App::import('Model','DealPurchase');
		App::import('Model', 'Merchant');
		App::import('Model', 'Venue');
		App::import('Model','Deal');
		$dealPurchase = new DealPurchase();
		$merchant = new Merchant();
		$venue = new Venue();
		$deal = new Deal();
		
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
		$dealPurchase->recursive = 0;
		$newPurchases = $dealPurchase->find('all', 
			array('conditions' => array('DealPurchase.created LIKE' => $today . '%'), 'order' => array('DealPurchase.deal_id')));

		//While newPurchases is not empty
		while(!empty($newPurchases)) {
			//Pop a purchase, find the deal, then pop any other purchases with the same deal.
			$dealPurchases[0] = array_pop($newPurchases);
			$currentDealId = $dealPurchases[0]['DealPurchase']['deal_id'];
			//debug("Searching for " . $currentDealId);
			//Add any purchases with the same deal to the array
			$newPurchaseCount = count($newPurchases);
			for($i = 0; $i < $newPurchaseCount; $i++) {
				if($newPurchases[$i]['DealPurchase']['deal_id'] == $currentDealId) {
					array_push($dealPurchases, $newPurchases[$i]);
					unset($newPurchases[$i]);
				}
			}
			//Notify the merchant of the purchases
			$thisMerchant = $deal->getDealsMerchant($currentDealId);
			$thisDeal = $deal->findById($currentDealId);
			$controller->set(array('DealPurchases' => $dealPurchases, 'Merchant' => $thisMerchant, 'Deal' => $thisDeal));
			$notification->sendHtmlMerchantMail($thisMerchant, 'purchaseSummary'); 
			
			//debug($thisMerchant);
			//debug($dealPurchases);
			//Cleanup
			unset($dealPurchases);
			sort($newPurchases);
		} //Change to merchant_id = 17
}

?>
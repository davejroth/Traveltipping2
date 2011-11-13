<?php
/**
 *
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
	  	App::import('model','Deal');
		$deal = new Deal();
		
		//Close any live deals that are expired
		//$liveDeals = $deal->find('all', array('conditions' => array('Deal.deal_status_id' => Configure::Read('Deal.Status_Listed'))))
		
		$today = date('Y-m-d');
		$liveDeals = $deal->find('all', array('conditions' => array('Deal.deal_live <=' => $today, 'Deal.deal_close >' => $today)));
		
		//Check for all deals that should be live and make sure they are
		foreach ($liveDeals as $thisDeal) {
			if($thisDeal['Deal']['deal_status_id'] != Configure::Read('Deal.Status_Listed')) {
				$thisDeal['Deal']['deal_status_id'] = Configure::Read('Deal.Status_Listed');
				$deal->save($thisDeal);
			}
			//echo $thisDeal['Deal']['id'].' '.$thisDeal['Deal']['name'];
			//echo '<br/>';
		}

	  //die( 0 );

	}
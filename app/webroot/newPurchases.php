<?php
		/* Cron custom code start here */
		
		//This is imported to check deal live/close dates and to notify the appropriate merchants.
	  	App::import('Model','DealPurchase');
		App::import('Model', 'Merchant');
		App::import('Model', 'Venue');
		$dealPurchase = new DealPurchase();
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
		
		$newPurchases = $dealPurchase->findByCreated($today);
		
		//While newPurchases is not empty
		
		
		//Pop a purchase, find the merchant then see if there are any other newPurchases with that merchant
		
		//If so, pop them as well and add them to the array of purchases to notify the merchant about.
	


?>
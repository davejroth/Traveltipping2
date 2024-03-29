<?php
/**
  * Notification.php
  * Authored By: David
  * This class is a helper that sends out emais to merchants, travelers, and AMs.  Each type has their own function
  */

class NotificationComponent extends Object {
    var $components = array('Email');

  	//Merchant Mail
	function sendHtmlMerchantMail($Merchant, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.
	$merchantEmailSubjects = array('dealApproved' => 'Deal Approved',
		'dealInitiated' => 'New Deal Created',
		'dealWaiting' => 'Your Next Deal is Waiting for Your Approval',
		'dealRelease' => 'Your Deal is Scheduled for Release',
		'dealLive' => 'Your Deal is Now Live',
		'dealCancelled' => 'Your Deal has been Canceled',
		'dealClose' => 'Your Deal has Ended!',
		'paymentMade' => 'A Payment has Been Made to Your Account',
		'newMerchant' => 'Welcome to TravelTipping - Account Details',
		'purchaseSummary' => 'Summary of Today\'s Reservations');
	/* SMTP Options */
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = $Merchant['User']['email'];
    $this->Email->subject = $merchantEmailSubjects[$template];;
    $this->Email->replyTo = 'advertise@traveltipping.com';
    $this->Email->from = 'TravelTipping Advertising <advertise@traveltipping.com>';
	$this->Email->template = 'merchants//' . $template; // note no '.ctp'
	$this->Email->layout = 'no_footer';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
 }  	

/**
 * sendHtmlUserMail is for email that is sent to all users (merchants or travelers)
 * @param: $user - An array of user information
 *       : $template - the email template to use
 */ 
 function sendHtmlUserMail($user, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.	
		$userEmailSubjects = array('resetPassword' => 'TravelTipping Password Reset',
		'newSubscriber' => 'Welcome to TravelTipping'
		);
		
		/* SMTP Options */
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = $user['User']['email'];
    $this->Email->subject = $userEmailSubjects[$template];;
    $this->Email->replyTo = 'donotreply@traveltipping.com';
    $this->Email->from = 'TravelTipping <donotreply@traveltipping.com>';
	$this->Email->template = 'users//' . $template; // note no '.ctp'
	$this->Email->layout = 'no_footer';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
	}
	
/**
 * sendHtmlUserMail is for email that is sent to account managers
 * @param: $user - An array of account manager information (currently there is only one AM so this is not used)
 *       : $template - the email template to use
 */ 
 function sendHtmlAmMail($template) {
	//This array should be declared as a class variable but I'm not sure how to do it.	
		$amEmailSubjects = array('dealApproved' => 'Deal Approved',
			'dealLive' => 'Deal is Live',
			'dealClose' => 'Deal has Closed',
			'dealCancelled' => 'Deal has Cancelled',
			'dealInitiated' => 'Deal has been initiated',
			'dealWaiting' => 'Deal Waiting for Merchant Approval',
			'newMerchant' => 'A new merchant has signed up',
			'dealsChanged' => 'Nightly summary of deal changes'
		);
		
		/* SMTP Options */
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = 'account.manager@traveltipping.com';
    $this->Email->subject = $amEmailSubjects[$template];
    $this->Email->replyTo = 'donotreply@traveltipping.com';
    $this->Email->from = 'TravelTipping <donotreply@traveltipping.com>';
	$this->Email->template = 'accountmanagers//' . $template; // note no '.ctp'
	$this->Email->layout = 'no_footer';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
	}
	
	function sendHtmlTravelerMail($traveler, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.
	$travelerEmailSubjects = array('dealConfirmation' => 'Booking Confirmation and Details',
		'newTraveler' => 'Your TravelTipping Account Details');
	
	/* SMTP Options */
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = $traveler['User']['email'];
    $this->Email->subject = $travelerEmailSubjects[$template];;
    $this->Email->replyTo = 'donotreply@traveltipping.com';
    $this->Email->from = 'TravelTipping <donotreply@traveltipping.com>';
	$this->Email->template = 'travelers//' . $template; // note no '.ctp'
	$this->Email->layout = 'default';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
	}
	
 
}


?>

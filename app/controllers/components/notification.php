<?php
class NotificationComponent extends Object {
    var $components = array('Email');
	
	//array $emailSubjects['newMerchant'] = 'Welcome to TravelTipping – Account Details';
	//var $test = array();
	var $test = 5;
	
/*
 * Takes the id of a user_detail and sends a new registration email to them
 */
	function sendNewUserMail($Traveler) {
	/* SMTP Options */
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = $Traveler['User']['email'];
    $this->Email->subject = 'Welcome to TravelTipping!';
    $this->Email->replyTo = 'registration@traveltipping.com';
    $this->Email->from = 'TravelTipping Registration <registration@traveltipping.com>';
	$this->Email->template = 'new_user_registration'; // note no '.ctp'
    $this->Email->sendAs = 'text'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();

 }
 
 	function sendNewMerchantMail($Merchant) {
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
    $this->Email->subject = 'Welcome to TravelTipping!';
    $this->Email->replyTo = 'registration@traveltipping.com';
    $this->Email->from = 'TravelTipping Registration <registration@traveltipping.com>';
	$this->Email->template = 'new_merchant_registration'; // note no '.ctp'
    $this->Email->sendAs = 'text'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();

 }
  	function sendHtmlMerchantMail($Merchant, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.
	$merchantEmailSubjects = array('newMerchant' => 'Welcome to TravelTipping –- Account Details',
		'newDeal' => 'New Deal Created',
		'dealWaiting' => 'Your Next Deal is Waiting for Your Approval',
		'dealRelease' => 'Your Deal is Scheduled for Release',
		'dealLive' => 'Your Deal is Now Live',
		'dealCancelled' => 'Your Deal has been Canceled',
		'dealClose' => 'Your Deal has Ended!',
		'paymentMade' => 'A Payment has Been Made to Your Account');
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
    $this->Email->from = 'TravelTipping Registration <registration@traveltipping.com>';
	$this->Email->template = 'merchants\\' . $template; // note no '.ctp'
	$this->Email->layout = 'default';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
	}
	
	function sendHtmlDealMail($Merchant, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.
	$merchantEmailSubjects = array('newDeal' => 'New Deal Created',
		'dealWaiting' => 'Your Next Deal is Waiting for Your Approval',
		'dealRelease' => 'Your Deal is Scheduled for Release',
		'dealLive' => 'Your Deal is Now Live',
		'dealCancelled' => 'Your Deal has been Canceled',
		'dealClose' => 'Your Deal has Ended!',
		'paymentMade' => 'A Payment has Been Made to Your Account');
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
	$this->Email->template = 'merchants\\' . $template; // note no '.ctp'
	$this->Email->layout = 'default';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
 }  	
 
 function sendHtmlUserMail($user, $template) {
	//This array should be declared as a class variable but I'm not sure how to do it.	
		$userEmailSubjects = array('resetPassword' => 'TravelTipping Password Reset',
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
	$this->Email->template = 'users\\' . $template; // note no '.ctp'
	$this->Email->layout = 'default';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
	}
 
 
 /*
   	function testNewMerchantMail($id) {
	App::import('model','Merchant');
	$merchantObj = new Merchant();
	$Merchant = $merchantObj->read(null,$id);
	$this->set('Merchant', $Merchant); //Set doesn't work
	/* SMTP Options 
    $this->Email->smtpOptions = array(
        'port'=>'25', 
        'timeout'=>'30',
        'host' => '67.210.113.84',
        'username'=>'registration@traveltipping.com',
        'password'=>'43Temp68',
    );
	$this->Email->delivery = 'smtp';
    $this->Email->to = $Merchant['User']['email'];
    $this->Email->subject = 'Welcome to TravelTipping!';
    $this->Email->replyTo = 'registration@traveltipping.com';
    $this->Email->from = 'TravelTipping Registration <registration@traveltipping.com>';
	$this->Email->template = 'newMerchant'; // note no '.ctp'
	$this->Email->layout = 'default';
    $this->Email->sendAs = 'both'; // Send as 'html', 'text' or 'both' (default is 'text')
    $this->Email->send();
 
 }*/
}
//NotificationComponent::$emailSubjects = array('newMerchant');


?>

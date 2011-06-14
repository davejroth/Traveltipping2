<?php
class NotificationComponent extends Object {
    var $components = array('Email');
	
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
}


?>

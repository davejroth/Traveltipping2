<?php
class Subscriber extends AppModel {
	var $name = 'Subscriber';
	var $displayField = 'email';
	
	 public $validate = array(
        'email' => array(
            'email' => array(
                'rule' => 'email',
                'message' => 'Please enter a valid email address.',
            )
		)
	);
}

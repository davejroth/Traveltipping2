<?php
class Subscriber extends AppModel {
	var $name = 'Subscriber';
	var $displayField = 'email';
	
	 public $validate = array(
        'email' => array(
            'email' => array(
                'rule' => 'email',
                'message' => 'Please provide a valid email address.',
            )
		)
	);
}

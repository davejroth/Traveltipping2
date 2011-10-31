<?php

class User extends AppModel {
/**
 * Model name
 *
 * @var string
 * @access public
 */
    public $name = 'User';
/**
 * Order
 *
 * @var string
 * @access public
 */
    public $order = 'name ASC';
/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
    public $actsAs = array(
        'Acl' => array('type' => 'requester'),
    );
/**
 * Model associations: belongsTo
 *
 * @var array
 * @access public
 */
    public $belongsTo = array('Role');
/**
 * Validation
 *
 * @var array
 * @access public
 */
 
	var $uses = array('Auth');
	
	var $hasMany = array(
	'PasswordReset' => array(
		'className' => 'PasswordReset',
		'foreignKey' => 'user_id',
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
	);
    public $validate = array(
        'email' => array(
            'email' => array(
                'rule' => 'email',
                'message' => 'Please provide a valid email address.',
            ),
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'Email address already in use.',
            ),
        ),
		'password' => array(
			'passwordlength' => array('rule' => 'passwordLength','message' => 'Enter between 5 and 20 characters'),
			'passwordequal'  => array('rule' =>'checkpasswords','message' => 'Passwords do not match')
		),
		'current_password' => array(
			'passwordCheck' => array('rule' => 'passwordCheck', 'message' => 'Password entered does not match your saved password.')
		),
		'resetEmail' => array(
			'emailExists' => array(
					'rule' => 'emailExists',
					'message' => 'Sorry, we couldnt find that address in our database'
			),
			'isEmail' => array(
					'rule' => 'email',
					'message' => 'Please provide a valid email address.',
			),
		)
				
    );

function emailExists() {
	$currentUser = $this->find('first', array('conditions' => array('User.email' => $this->data['User']['resetEmail'])));
	return (!empty($currentUser));
}


function checkpasswords()
{
   return strcmp($this->data['User']['password'], Security::hash($this->data['User']['confirm_password'], null, true)) == 0;
	//return strcmp($this->data['User']['password'], $this->data['User']['password2']) == 0;
   }

function passwordlength()
{
	$length = strlen($this->data['User']['confirm_password']);
	return ($length > 5 && $length < 20);
}

function passwordCheck()
{
	$currentUser = $this->find('first', array('conditions' => array('User.id' => $this->data['User']['id'])));
	$currentPassword = $currentUser['User']['password'];
	//debug($currentUser);
	//debug($currentPassword);
	
	return strcmp(Security::hash($this->data['User']['current_password'], null, true), $currentPassword) == 0; 
}
    public function parentNode() {
        if (!$this->id && empty($this->data)) {
            return null;
        }
        $data = $this->data;
        if (empty($this->data)) {
            $data = $this->read();
        }
        if (!isset($data['User']['role_id']) || !$data['User']['role_id']) {
            return null;
        } else {
            return array('Role' => array('id' => $data['User']['role_id']));
        }
    }

    public function afterSave($created) {
        if ($created) {
            $parent = $this->parentNode();
            $parent = $this->node($parent);
            $node = $this->node();
            $aro = $node[0];
            $aro['Aro']['parent_id'] = $parent[0]['Aro']['id'];
			$aro['Aro']['alias'] = $this->data['User']['email'];
            $this->Aro->save($aro);
        }
    }


}
?>
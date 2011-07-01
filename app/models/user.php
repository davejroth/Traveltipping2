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
    public $validate = array(
        'username' => array(
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'The username has already been taken.',
            ),
            'notEmpty' => array(
                'rule' => 'notEmpty',
                'message' => 'This field cannot be left blank.',
            ),
        ),
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
        'name' => array(
            'rule' => 'notEmpty',
            'message' => 'This field cannot be left blank.',
        ),
    );



function checkpasswords()
{
   return strcmp($this->data['User']['password'], Security::hash($this->data['User']['password2'], null, true)) == 0;
}

function passwordlength()
{
	$length = strlen($this->data['User']['password2']);
	return ($length > 5 && $length < 20);
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
        if (!$created) {
            $parent = $this->parentNode();
            $parent = $this->node($parent);
            $node = $this->node();
            $aro = $node[0];
            $aro['Aro']['parent_id'] = $parent[0]['Aro']['id'];
            $this->Aro->save($aro);
        }
    }


}
?>
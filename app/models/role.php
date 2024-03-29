<?php

class Role extends AppModel {
/**
 * Model name
 *
 * @var string
 * @access public
 */
    public $name = 'Role';
/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
    public $actsAs = array(
        'Acl' => array(
            'type' => 'requester',
        ),
    );
/**
 * Validation
 *
 * @var array
 * @access public
 */
    public $validate = array(
        'title' => array(
            'rule' => array('minLength', 1),
            'message' => 'Title cannot be empty.',
        ),
        'alias' => array(
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'This alias has already been taken.',
            ),
            'minLength' => array(
                'rule' => array('minLength', 1),
                'message' => 'Alias cannot be empty.',
            ),
        ),
    );

    public function parentNode() {
        return null;
    }

}
?>
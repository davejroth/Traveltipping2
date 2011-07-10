<?php
/**
 * Node
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Image extends AppModel {
/**
 * Model name
 *
 * @var string
 * @access public
 */
    public $name = 'Image';
/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
    public $actsAs = array(
        'Containable',
        'Tree',
        'Encoder',
        'Meta',
        'Url',
    );
/**
 * Node type
 *
 * If the Model is associated to Node model, this variable holds the Node type value
 *
 * @var string
 * @access public
 */
    public $type = null;
/**
 * Guid
 *
 * @var string
 * @access public
 */
    public $guid = null;
/**
 * Validation
 *
 * @var array
 * @access public
 */
    public $validate = array(
        'title' => array(
            'rule' => 'notEmpty',
            'message' => 'This field cannot be left blank.',
        ),
        'slug' => array(
            'isUnique' => array(
                'rule' => 'isUnique',
                'message' => 'This slug has already been taken.',
            ),
            'minLength' => array(
                'rule' => array('minLength', 1),
                'message' => 'Slug cannot be empty.',
            ),
        ),
    );

/**
 * beforeFind callback
 *
 * @param array $q
 * @return array
 */
    public function beforeFind($q) {
        if ($this->type != null && !isset($q['conditions']['Image.type'])) {
            $q['conditions']['Image.type'] = $this->type;
        }
        return $q;
    }
/**
 * beforeSave callback
 *
 * @return boolean
 */
    public function beforeSave() {
        if ($this->type != null) {
            $this->data['Image']['type'] = $this->type;
        }
        //$this->__cacheTerms();

        return true;
    }

}
?>
<?php
/**
 * Attachments Controller
 *
 * This file will take care of file uploads (with rich text editor integration).
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class AttachmentsController extends AppController {
/**
 * Controller name
 *
 * @var string
 * @access public
 */
    public $name = 'Attachments';
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
    public $uses = array('Image');
/**
 * Helpers used by the Controller
 *
 * @var array
 * @access public
 */
    public $helpers = array('Filemanager', 'Text', 'Image');
/**
 * Node type
 *
 * If the Controller uses Node model,
 * this is, most of the time, the singular of the Controller name in lowercase.
 *
 * @var string
 * @access public
 */
    public $type = 'attachment';
/**
 * Uploads directory
 *
 * relative to the webroot.
 *
 * @var string
 * @access public
 */
    public $uploadsDir = 'uploads';

/**
 * Before executing controller actions
 *
 * @return void
 * @access public
 */
    public function beforeFilter() {
        parent::beforeFilter();

        // Comment, Category, Tag not needed
        //$this->Node->unbindModel(array('hasMany' => array('Comment'), 'hasAndBelongsToMany' => array('Category', 'Tag')));

        $this->Image->type = $this->type;
        $this->Image->Behaviors->attach('Tree', array('scope' => array('Image.type' => $this->type)));
        $this->set('type', $this->type);
        //$this->layout ='admin';
    }

/**
 * Admin index
 *
 * @return void
 * @access public
 */
 
 		
 		
    public function admin_index() {
        $this->set('title_for_layout', __('Image Library', true));

        $this->Image->recursive = 0;
        $this->paginate['Image']['order'] = 'Image.created DESC';
        $this->set('attachments', $this->paginate());
        
    }

/**
 * Admin add
 *
 * @return void
 * @access public
 */
    public function admin_add() {
        $this->set('title_for_layout', __('Add Image', true));

        if (isset($this->params['named']['editor'])) {
            $this->layout = 'admin_full';
        }

        if (!empty($this->data)) {
            $file = $this->data['Image']['file'];
            unset($this->data['Image']['file']);

            // check if file with same path exists
            $destination = WWW_ROOT . $this->uploadsDir . DS . $file['name'];
            if (file_exists($destination)) {
                $newFileName = String::uuid() . '-' . $file['name'];
                $destination = WWW_ROOT . $this->uploadsDir . DS . $newFileName;
            } else {
                $newFileName = $file['name'];
            }

            // remove the extension for title
            if (explode('.', $file['name']) > 0) {
                $fileTitleE = explode('.', $file['name']);
                array_pop($fileTitleE);
                $fileTitle = implode('.', $fileTitleE);
            } else {
                $fileTitle = $file['name'];
            }

            $this->data['Image']['title'] = $fileTitle;
            $this->data['Image']['slug'] = $newFileName;
            $this->data['Image']['mime_type'] = $file['type'];
            //$this->data['Node']['guid'] = Router::url('/' . $this->uploadsDir . '/' . $newFileName, true);
            $this->data['Image']['path'] = '/' . $this->uploadsDir . '/' . $newFileName;

            $this->Image->create();
            if ($this->Image->save($this->data)) {
                // move the file
                move_uploaded_file($file['tmp_name'], $destination);

                $this->Session->setFlash(__('The Attachment has been saved', true), 'default', array('class' => 'success'));

                if (isset($this->params['named']['editor'])) {
                    $this->redirect(array('action' => 'browse'));
                } else {
                    $this->redirect(array('action'=>'index'));
                }
            } else {
                $this->Session->setFlash(__('The Attachment could not be saved. Please, try again.', true), 'default', array('class' => 'error'));
            }
        }
    }

/**
 * Admin edit
 *
 * @param int $id 
 * @return void
 * @access public
 */
    public function admin_edit($id = null) {
        $this->set('title_for_layout', __('Edit Image Information', true));

        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid Attachment', true), 'default', array('class' => 'error'));
            $this->redirect(array('action'=>'index'));
        }
        if (!empty($this->data)) {
            if ($this->Image->save($this->data)) {
                $this->Session->setFlash(__('The Attachment has been saved', true), 'default', array('class' => 'success'));
                $this->redirect(array('action'=>'index'));
            } else {
                $this->Session->setFlash(__('The Attachment could not be saved. Please, try again.', true), 'default', array('class' => 'error'));
            }
        }
        if (empty($this->data)) {
            $this->data = $this->Image->read(null, $id);
        }
    }

/**
 * Admin delete
 *
 * @param int $id 
 * @return void
 * @access public
 */
    public function admin_delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for Attachment', true), 'default', array('class' => 'error'));
            $this->redirect(array('action'=>'index'));
        }/*
        if (!isset($this->params['named']['token']) || ($this->params['named']['token'] != $this->params['_Token']['key'])) {
            $blackHoleCallback = $this->Security->blackHoleCallback;
            $this->$blackHoleCallback();
        }*/

        $attachment = $this->Image->find('first', array(
            'conditions' => array(
                'Image.id' => $id,
                'Image.type' => $this->type,
            ),
        ));
        if (isset($attachment['Image'])) {
            if ($this->Image->delete($id)) {
                unlink(WWW_ROOT . $this->uploadsDir . DS . $attachment['Image']['slug']);
                $this->Session->setFlash(__('Attachment deleted', true), 'default', array('class' => 'success'));
                $this->redirect(array('action'=>'index'));
            }
        } else {
            $this->Session->setFlash(__('Invalid id for Attachment', true), 'default', array('class' => 'error'));
            $this->redirect(array('action'=>'index'));
        }
    }

    public function admin_browse() {
        $this->layout = 'admin_full';
        $this->admin_index();
    }

}
?>
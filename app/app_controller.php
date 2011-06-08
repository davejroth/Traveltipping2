<?php
class AppController extends Controller {
    var $components = array('Acl', 'Auth', 'Session');
    var $helpers = array('Html', 'Form', 'Session', 'AssetCompress.AssetCompress', 'Javascript');
    
    var $view = 'Theme';
    //var $theme = 'cake_default';

    function beforeFilter() {
        //Configure AuthComponent
        $this->Auth->authorize = 'actions';
        $this->Auth->allow(array('*'));
		$this->Auth->fields = array(
			'username' => 'email',
			'password' => 'password'
			);
        $this->Auth->loginAction = array('controller' => 'users', 'action' => 'login');
        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'logout');
        $this->Auth->loginRedirect = array('controller' => 'users', 'action' => 'index');
    }
}
?>
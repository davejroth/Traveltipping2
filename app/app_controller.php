<?php
class AppController extends Controller {
    var $components = array('Acl', 'Auth', 'Session', 'Cookie');
    var $helpers = array('Html', 'Form', 'Session', 'AssetCompress.AssetCompress', 'Javascript');
    
    var $view = 'Theme';
    //var $theme = 'cake_default';
	  //Define all global variables here
	
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
		//$this->Auth->loginRedirect = '/';
		//$this->Auth->autoRedirect = false;
		$this->Cookie->name = 'TravelTipping';
		
		//Set Session variables.  I'm not sure if this is the right place to do this?
		//I'm hoping that the !User.role_id will prevent it from running this code every pageload.
		if ($this->Session->read('Auth.User') && !$this->Session->read('User.role_id')) {
		$user = $this->Session->read('Auth.User');
		if($user['role_id'] == Configure::Read('Role.Merchant_ID'))
		{
			$merchant = $this->Merchant->find('first',
				array('conditions' => array('Merchant.user_id' => $user['id'])));
			$this->Session->write('Merchant.id', $merchant['Merchant']['id']);
		} 
		
		if($user['role_id'] == Configure::Read('Role.Traveler_ID'))
		{
			$traveler = $this->Traveler->find('first',
				array('conditions' => array('Traveler.user_id' => $user['id'])));
			$this->Session->write('Traveler.id', $traveler['Traveler']['id']);
		}
		$this->Session->write('User.role_id', $user['role_id']);
		$this->Session->write('User.id', $user['id']);
	}
    }
}
?>
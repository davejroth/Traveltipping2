<?php
class AppController extends Controller {
    var $components = array('Acl', 'Auth', 'Session', 'Cookie', 'Ssl');
    var $helpers = array('Html','Calendar', 'Form', 'Time', 'Session', 'AssetCompress.AssetCompress', 'Javascript','Js' => array('Jquery'));

    var $view = 'Theme';
    //var $theme = 'cake_default';
	  //Define all global variables here
	
    function beforeFilter() {
        //Configure AuthComponent
        $this->Auth->authorize = 'actions';
        $this->Auth->allow(array(
        'display',
        'login',
        'logout',
        'signup',
        'index',
        'view',
        'book',
        'purchase',
        'ajax_signup',
        'ajax_sign_in',
        'resetPassword',
        'resendPassword',
				'confirmReset',
        'sendForgotPasswordMail',
        'newPassword',
        'loginredirect',
        'check_session',
        'get_header',
        'getDealInfo',
		'subscribe',
        ));
		$this->Auth->fields = array(
			'username' => 'email',
			'password' => 'password'
			);
        $this->Auth->loginAction = array('controller' => 'users', 'action' => 'login');
        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'logout');
		$this->Cookie->name = 'TravelTipping';
		$this->Auth->autoRedirect = false; 
		
    }
	/**
	 * This beforeRender call forces https redirection for controller actions that are added to the action array.  If an action
	 * is not defined in the $action array, it will redirect to http:// in order to save server load.
	 */
	public function beforeRender(){

		$securityActions = array('purchase', 'login');
		//debug($this->params['action']);
		if( in_array( $this->params['action'] , $securityActions ) ){
			 $this->Ssl->force();
		}else{
			 //$this->Ssl->unforce();  Uncommenting this causes the front page to display strangely.  John & David should debug.
		}
		//Assume they do not need a layover unless, (if)if the action requires a layover, they are not logged in
		//, and they do not have a cookie
		$layoverActions = array('index', 'view', 'book', 'purchase');
		$subscribed = true;
		if((in_array($this->params['action'], $layoverActions) || $this->params['url']['url'] == '/') && !$this->Session->read('Auth.User') && !$this->Cookie->read('email')) {
			$subscribed = false;
		}
		$this->set(compact('subscribed'));
	}
}
?>
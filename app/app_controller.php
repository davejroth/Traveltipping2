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
        'getDealInfo'
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

		$action = array('purchase', 'login');
		//debug($this->params['action']);
		if( in_array( $this->params['action'] , $action ) ){
			 $this->Ssl->force();
		}else{
			 //$this->Ssl->unforce();  Uncommenting this causes the front page to display strangely.  John & David should debug.
		}
		
		$subscribed = false;
		if($this->Session->read('Auth.User') || $this->Cookie->read('email')) {
			$subscribed = true;
		}
		$this->set(compact('subscribed'));
	}
}
?>
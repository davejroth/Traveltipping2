<?php 
class SslComponent extends Object {

	var $components = array('RequestHandler');

	var $Controller = null;

	function initialize(&$Controller) {
		$this->Controller = $Controller;
	}

	function force() {
		if(!$this->RequestHandler->isSSL()) {
			$this->Controller->redirect('https://'.$this->__url(443));
			//$this->Controller->redirect('https://' . $_SERVER['SERVER_NAME'] . $this->here);

		}
	}

	function unforce() {
		if($this->RequestHandler->isSSL()) {
			$this->Controller->redirect('http://'.$this->__url());
			//$this->Controller->redirect('http://' . $_SERVER['SERVER_NAME'] . $this->here);

		}
	}

	/**This method updated from John Isaacks**/
	function __url($default_port = 443)
	{
		//$port = env('SERVER_PORT') == $default_port ? '' : ':'.env('SERVER_PORT');
		return env('SERVER_NAME').env('REQUEST_URI');

	}
}

?>
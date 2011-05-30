<?php
/* Role Test cases generated on: 2011-05-27 22:27:41 : 1306560461*/
App::import('Model', 'Role');

class RoleTestCase extends CakeTestCase {
	var $fixtures = array('app.role');

	function startTest() {
		$this->Role =& ClassRegistry::init('Role');
	}

	function endTest() {
		unset($this->Role);
		ClassRegistry::flush();
	}

	function testParentNode() {

	}

}

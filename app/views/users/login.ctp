<?php /* echo $this->Session->read('Traveler.id');
echo $this->Session->read('test');

echo ($user['role_id'] == Configure::Read('Role.Traveler_ID'));
	echo $user['id'];
	print_r($traveler); */?>


<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
	<h2 class="page_title">Login To Your Account</h2>
	<div class="page_content">
	<?php
echo $this->Session->flash('auth');
echo $this->Form->create('User', array('action' => 'login'));
echo $this->Form->inputs(array(
	'legend' => __('', true),
	'email',
	'password'
));
echo $this->Form->end('Login');
?>
 
	</div>

	</div>
</div>
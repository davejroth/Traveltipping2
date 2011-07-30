<?php /* echo $this->Session->read('Traveler.id');
echo $this->Session->read('test');

echo ($user['role_id'] == Configure::Read('Role.Traveler_ID'));
	echo $user['id'];
	print_r($traveler); */?>



	<h2>Sign In To Existing Account</h2>
	<div class="content">
	<?php
echo $this->Session->flash('auth');
echo $this->Form->create('Traveler', array('action' => 'ajax_sign_in'));
echo $this->Form->inputs(array(
	'legend' => __('', true),
	'email',
	'password'
));
//echo $ajax->submit('Login', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_sign_in'), 'update' => 'content'));
	//echo $form->end();
	echo $this->Form->end('Login');
?>

 
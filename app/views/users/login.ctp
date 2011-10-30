<?php
 /* echo $this->Session->read('Traveler.id');
echo $this->Session->read('test');

echo ($user['role_id'] == Configure::Read('Role.Traveler_ID'));
	echo $user['id'];
	print_r($traveler); */
	?>


<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
	<h2 class="page_title">Login To Your Account</h2>
	<div class="page_content">
	<?php
echo $this->Session->flash('auth');
echo $this->Form->create('User', array('action' => 'login','class' => 'clearfix'));
echo '<div class="login_fields">';
echo $this->Form->input('User.email',array('label' => 'Username - Email'));
echo $this->Form->input('password');
echo $this->Html->link('Forgot Password?',array('controller' => 'users', 'action' => 'resetPassword'));
echo '</div>';

 echo $this->Form->end(array('class'=>'login')); 
 
?>
 
	</div>

	</div>
</div>
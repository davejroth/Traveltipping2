<?php echo $html->script('prototype');
	  echo $html->script('scriptaculous'); 
	 ?>
<div id="signed_in">
	
	<div id="sign_in">
	<h2>Sign In To Existing Account</h2>
	<?php
echo $this->Session->flash();
echo $this->Form->create('Traveler');
echo $this->Form->input('User.email', array('label'=>'Email Address:'));
echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));

echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_sign_in'), 'update' => 'signed_in'));
	echo $form->end();
	//echo $this->Form->end('Login', $options);

?>
</div>
	
<div id='new_account'>
<h2>Create New Account</h2>

<?php
	echo $form->create('Traveler');
	echo $this->Form->input('first_name', array('label'=>'First Name:'));
	echo $this->Form->input('last_name', array('label'=>'Last Name:'));
	echo $this->Form->input('User.email', array('label'=>'Email Address:'));
	echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));
	echo $this->Form->input('User.confirm_password', array('label'=>'Confirm Password:','value'=>"", 'type' =>'password'));
	//Create travelers controller & view ajax_signup.  Fix redirection.
	echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_signup'), 'update' => 'signed_in'));
	echo $form->end();
?>
</div>
</div>



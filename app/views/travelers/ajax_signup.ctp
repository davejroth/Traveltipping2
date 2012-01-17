
<h3>Create New Account</h3>

<?php
	echo $form->create('Traveler');
	echo $this->Form->input('first_name', array('label'=>'First Name:'));
	echo $this->Form->input('last_name', array('label'=>'Last Name:'));
	echo $this->Form->input('User.email', array('label'=>'Email Address:'));
	echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));
	echo $this->Form->input('User.confirm_password', array('label'=>'Confirm Password:','value'=>"", 'type' =>'password'));
	//Create travelers controller & view ajax_signup.  Fix redirection.
	//echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_signup'), 'update' => 'ajax_account_info'));
	echo $form->end(array('class' => 'ajax_signup'));
?>

	<script type="text/javascript">
$(document).ready(function() {
	
$('.notification').fadeOut(3000,'easeInCubic',function(){
	$('.notification').remove()
});

});
</script>





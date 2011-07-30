<?php echo $html->script('prototype');
	  echo $html->script('scriptaculous'); 
	 ?>
<div id="layout_left" class="grid_22">
	
<div id='testdiv'>
<?php
	echo $form->create('Traveler');
	echo $this->Form->input('first_name', array('label'=>'First Name:'));
	echo $this->Form->input('last_name', array('label'=>'Last Name:'));
	echo $this->Form->input('User.email', array('label'=>'Email Address:'));
	echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));
	echo $this->Form->input('User.confirm_password', array('label'=>'Confirm Password:','value'=>"", 'type' =>'password'));
	//Create travelers controller & view ajax_signup.  Fix redirection.
	echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_signup'), 'update' => 'testdiv'));
	echo $form->end();
?>
</div>
	
</div><!-- layout_left -->


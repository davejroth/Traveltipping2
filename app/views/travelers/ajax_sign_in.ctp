<?php echo $html->script('prototype');
	  echo $html->script('scriptaculous');	  ?>

<div id="sign_in">
	<h2>Sign In To Existing Account</h2>
	<div id="content">
	<?php
echo $this->Session->flash('auth');
echo $this->Form->create('Traveler');
echo $this->Form->inputs(array(
	'legend' => __('', true),
	'User.email',
	'User.password'
));

echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_sign_in'), 'update' => 'content'));
	echo $form->end();
	//echo $this->Form->end('Login', $options);

?>
</div>
</div>

 
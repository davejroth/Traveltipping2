
<h3>Sign In To Existing Account</h3>
<?php
echo $this->Session->flash();
echo $this->Form->create('Traveler',array('id' => 'TravelerAjaxSigninForm'));
echo $this->Form->input('User.email', array('label'=>'Email Address:'));
echo $this->Form->input('User.password', array('label'=>'Password:','value'=>""));

//echo $ajax->submit('Submit', array('url'=> array('controller'=>'travelers', 'action'=>'ajax_sign_in'), 'update' => 'ajax_account_info'));
echo $form->end(array('class' => 'ajax_sign_in'));
//echo $this->Form->end('Login', $options);

?>

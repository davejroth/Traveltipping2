<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<h2 class="page_title"><?php __('Reset Password'); ?></h2>
	
	<div id="password_reset" class="page_content">
<?php echo $this->Form->create('User', array('class' => 'clearfix'));?>
		<h3 class ="subtitle">Enter your email to reset your password. </h3>
	<?php
		echo '<div class="reset_password_fields">';
		echo $this->Form->input('resetEmail', array('label'=>'Username Email Address','value'=>""));
		echo '</div>';
	?>
<?php echo $this->Form->end(array('value'=>'','class'=>'submit_btn')); ?>
<p class="last">After clicking on the SUBMIT button, check your inbox for an email that will help you reset your password.</p>

	</div>
	</div>
</div>

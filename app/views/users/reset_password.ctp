<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<h2 class="page_title"><?php __('Reset Password'); ?></h2>
	
	<div class="page_content">
<?php echo $this->Form->create('User');?>
		<h3 class ="subtitle">Enter your email to reset your password. </h3>
	<?php
		echo $this->Form->input('resetEmail', array('label'=>'Username Email Address','value'=>""));
	?>
<?php echo $this->Form->end(__('Submit', true));?>
	<p>After clicking the SUBMIT button, check your inbox for an email that will help you reset your password. </p>
	</div>
	</div>
</div>

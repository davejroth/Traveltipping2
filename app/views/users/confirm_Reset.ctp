<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<h2 class="page_title"><?php __('Reset Password'); ?></h2>
	
		<div class="page_content">
		<h3 class ="subtitle">Password email has been sent to <?php echo $email; ?> </h3>
	<?php
		echo $this->Html->link('Resend email', array('controller' => 'travelers', 'action' => 'signup'),array( 'title'=>'Create an Account'));
	?>
	<p>Check your inbox for an email to reset your password </p>
	</div>
	</div>
</div>

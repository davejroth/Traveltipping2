

<div class="white_mod_960_wrap">
	<div class="white_mod_960_top"></div>
	<div class="white_mod_960_content">
		<h2 class="page_title"><?php __('Reset Password'); ?></h2>
	
	<div id="password_reset" class="page_content">
	
	<?php echo $this->Form->create('User', array('class' => 'clearfix'));?>

	<?php
		echo '<div class="change_password_fields">';
				echo $this->Form->input('id');
		echo $this->Form->input('password', array('label'=>'New Password:','value'=>""));
		echo $this->Form->input('confirm_password', array('label'=>'Confirm New Password:','value'=>"", 'type' =>'password'));
  
   		echo '</div>';
	?>

<?php echo $this->Form->end(array('class' => 'submit_btn'));?>

	</div>
	</div>
</div>




<div id="layout_left" class="grid_22">
		<h2 class="page_title"><?php __('Change Password'); ?></h2>

<?php echo $this->Form->create('User', array('class' => 'clearfix'));?>

	<?php
		echo '<div class="change_password_fields">';
		echo $this->Form->input('current_password', array('label'=>'Current Password:','value'=>"", 'type' =>'password'));
		echo $this->Form->input('password', array('label'=>'New Password:','value'=>""));
		echo $this->Form->input('confirm_password', array('label'=>'Confirm New Password:','value'=>"", 'type' =>'password'));
   		echo '</div>';
	?>

<?php echo $this->Form->end(array('class' => 'submit_btn'));?>


</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('manage_account'); ?>

</div><!-- #layout_right -->
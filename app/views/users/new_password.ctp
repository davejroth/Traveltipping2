<div class="users form">
<?php echo $this->Form->create('User');?>
	<fieldset>
		<legend><?php __('Enter New Password'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('password', array('label'=>'New Password:','value'=>""));
		echo $this->Form->input('confirm_password', array('label'=>'Confirm New Password:','value'=>"", 'type' =>'password'));
   
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>

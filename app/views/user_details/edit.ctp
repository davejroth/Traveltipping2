<div class="userDetails form">
<?php echo $this->Form->create('UserDetail');?>
	<fieldset>
 		<legend><?php __('Edit User Detail'); ?></legend>
	<?php
		/*echo "<pre>";
		print_r($smtp_errors);
		echo "</pre>"; */
		echo $this->Form->input('UserDetail.id');
		echo $this->Form->input('User.id');
		/*//echo $this->Form->input('user_id');
		echo $this->Form->input('UserDetail.is_male', array('type' => 'radio', 'options' => array('1' => 'Male', '0' =>'Female')));
		echo $this->Form->input('birthday');
		echo $this->Form->input('state_id');
		echo $this->Form->input('postal_code');
		echo $this->Form->input('first_name');
		echo $this->Form->input('last_name'); */
		
			
		echo $this->Form->input('UserDetail.first_name');
		echo $this->Form->input('UserDetail.last_name');
		echo $this->Form->input('User.email');
		//echo $this->Form->input('user_id');
		echo $this->Form->input('UserDetail.is_male', array('type' => 'radio', 'options' => array('1' => 'Male', '0' =>'Female')));
		echo $this->Form->input('UserDetail.birthday');
		echo $this->Form->input('UserDetail.state_id');
		echo $this->Form->input('UserDetail.postal_code');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('UserDetail.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('UserDetail.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List User Details', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('controller' => 'states', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('controller' => 'states', 'action' => 'add')); ?> </li>
	</ul>
</div>
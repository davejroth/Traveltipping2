<div class="travelers form">
<?php echo $this->Form->create('Traveler');?>
	<fieldset>
 		<legend><?php __('Edit Traveler'); ?></legend>
	<?php
		/*echo "<pre>";
		print_r($smtp_errors);
		echo "</pre>"; */
		echo $this->Form->input('Traveler.id');
		echo $this->Form->input('User.id');
		/*//echo $this->Form->input('user_id');
		echo $this->Form->input('Traveler.is_male', array('type' => 'radio', 'options' => array('1' => 'Male', '0' =>'Female')));
		echo $this->Form->input('birthday');
		echo $this->Form->input('state_id');
		echo $this->Form->input('postal_code');
		echo $this->Form->input('first_name');
		echo $this->Form->input('last_name'); */
		
			
		echo $this->Form->input('Traveler.first_name');
		echo $this->Form->input('Traveler.last_name');
		echo $this->Form->input('User.email');
		//echo $this->Form->input('user_id');
		echo $this->Form->input('Traveler.is_male', array('type' => 'radio', 'options' => array('1' => 'Male', '0' =>'Female')));
		echo $this->Form->input('Traveler.birthday');
		echo $this->Form->input('Traveler.state_id');
		echo $this->Form->input('Traveler.postal_code');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Traveler.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Traveler.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Travelers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('controller' => 'states', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('controller' => 'states', 'action' => 'add')); ?> </li>
	</ul>
</div>
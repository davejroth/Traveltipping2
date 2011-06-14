<div class="travelers form">
<?php echo $this->Form->create('Traveler');?>
	<fieldset>
 		<legend><?php __('Add Traveler'); ?></legend>
	<?php
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

		<li><?php echo $this->Html->link(__('List Travelers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('controller' => 'states', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('controller' => 'states', 'action' => 'add')); ?> </li>
	</ul>
</div>
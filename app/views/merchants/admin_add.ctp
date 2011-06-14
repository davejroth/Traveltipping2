<div class="merchant form">
<?php echo $this->Form->create('Merchant');?>
	<fieldset>
 		<legend><?php __('Admin Add Merchant'); ?></legend>
	<?php
		echo $this->Form->input('about_us');
		echo $this->Form->input('website');
		echo $this->Form->input('business_reviews');
		echo $this->Form->input('business_name');
		echo $this->Form->input('city_id');
		echo $this->Form->input('postal_code');
		echo $this->Form->input('address');
		echo $this->Form->input('second_address');
		echo $this->Form->input('user_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Merchant', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="merchant form">
<?php echo $this->Form->create('Merchant');?>
	<fieldset>
 		<legend><?php __('Add Merchant'); ?></legend>
	<?php
		echo $this->Form->input('User.email');
		//echo $this->Form->input('User.name');
		echo $this->Form->input('Merchant.business_name');
		echo $this->Form->input('Merchant.business_type_id');
		echo $this->Form->input('Merchant.about_us');
		echo $this->Form->input('Merchant.website');
		echo $this->Form->input('Merchant.business_reviews');
		echo $this->Form->input('Merchant.address');
		echo $this->Form->input('Merchant.second_address');
		echo $this->Form->input('Merchant.city');
		echo $this->Form->input('Merchant.state');
		echo $this->Form->input('Merchant.country_id');
		echo $this->Form->input('Merchant.first_name');
		echo $this->Form->input('Merchant.last_name');
		echo $this->Form->input('Merchant.phone');
		echo $this->Form->input('Merchant.postal_code');
		
		
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
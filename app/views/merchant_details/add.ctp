<div class="merchantDetails form">
<?php echo $this->Form->create('MerchantDetail');?>
	<fieldset>
 		<legend><?php __('Add Merchant Detail'); ?></legend>
	<?php
		echo $this->Form->input('User.email');
		//echo $this->Form->input('User.name');
		echo $this->Form->input('MerchantDetail.business_name');
		echo $this->Form->input('MerchantDetail.business_type_id');
		echo $this->Form->input('MerchantDetail.about_us');
		echo $this->Form->input('MerchantDetail.website');
		echo $this->Form->input('MerchantDetail.business_reviews');
		echo $this->Form->input('MerchantDetail.address');
		echo $this->Form->input('MerchantDetail.second_address');
		echo $this->Form->input('MerchantDetail.city');
		echo $this->Form->input('MerchantDetail.state');
		echo $this->Form->input('MerchantDetail.country_id');
		echo $this->Form->input('MerchantDetail.first_name');
		echo $this->Form->input('MerchantDetail.last_name');
		echo $this->Form->input('MerchantDetail.phone');
		echo $this->Form->input('MerchantDetail.postal_code');
		
		
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
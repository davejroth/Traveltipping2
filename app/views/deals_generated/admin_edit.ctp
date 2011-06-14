<div class="deals form">
<?php echo $this->Form->create('Deal');?>
	<fieldset>
		<legend><?php __('Admin Edit Deal'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('merchant_id');
		echo $this->Form->input('title');
		echo $this->Form->input('slug');
		echo $this->Form->input('description');
		echo $this->Form->input('details');
		echo $this->Form->input('original_price');
		echo $this->Form->input('discounted_price');
		echo $this->Form->input('deal_start_date');
		echo $this->Form->input('deal_end_date');
		echo $this->Form->input('trip_start_date');
		echo $this->Form->input('trip_end_date');
		echo $this->Form->input('max_purchases');
		echo $this->Form->input('current_purchases');
		echo $this->Form->input('comission_percentage');
		echo $this->Form->input('deal_status_id');
		echo $this->Form->input('deal_type_id');
		echo $this->Form->input('private_note');
		echo $this->Form->input('destination_id');
		echo $this->Form->input('street_address');
		echo $this->Form->input('zip_code');
		echo $this->Form->input('is_timed');
		echo $this->Form->input('city');
		echo $this->Form->input('state');
		echo $this->Form->input('country');
		echo $this->Form->input('reservation_type_id');
		echo $this->Form->input('company_name');
		echo $this->Form->input('displayed_email');
		echo $this->Form->input('max_nights');
		echo $this->Form->input('flat_fee');
		echo $this->Form->input('image1');
		echo $this->Form->input('image2');
		echo $this->Form->input('image3');
		echo $this->Form->input('image4');
		echo $this->Form->input('image5');
		echo $this->Form->input('image6');
		echo $this->Form->input('about_host');
		echo $this->Form->input('highlights');
		echo $this->Form->input('getting_there');
		echo $this->Form->input('Category');
		echo $this->Form->input('Region');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Deal.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Deal.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Merchant', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('controller' => 'deal_statuses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Status', true), array('controller' => 'deal_statuses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('controller' => 'destinations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('controller' => 'destinations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Reservation Types', true), array('controller' => 'reservation_types', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Reservation Type', true), array('controller' => 'reservation_types', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Availabilities', true), array('controller' => 'deal_availabilities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Availability', true), array('controller' => 'deal_availabilities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('controller' => 'deal_purchases', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('controller' => 'deal_purchases', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories', true), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category', true), array('controller' => 'categories', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Regions', true), array('controller' => 'regions', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Region', true), array('controller' => 'regions', 'action' => 'add')); ?> </li>
	</ul>
</div>
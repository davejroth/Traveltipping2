<div class="deals form">
<?php echo $this->Form->create('Deal');?>
	<fieldset>
 		<legend><?php __('Add Deal'); ?></legend>
	<?php
		//echo $this->Form->input('image', array('label' => __('Upload', true), 'type' => 'file',));
		//echo $form->input('nodeslist');
		echo $form->input('Node');
		echo $this->Form->input('merchant_detail_id');
		echo $this->Form->input('reservation_type_id');
		echo $this->Form->input('title');
		echo $this->Form->input('slug');
		echo $this->Form->input('description');
		echo $this->Form->input('details');
		echo $this->Form->input('original_price');
		echo $this->Form->input('discounted_price');
		echo $this->Form->input('is_timed',  array( 'label' => 'This deal should based on :',
		'options' => array('0' => 'Deal Max Quantity Reached', '1' => 'Deal Date End Reached' )));
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
		echo $this->Form->input('city_id');
		echo $this->Form->input('zip_code');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Deals', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('controller' => 'deal_statuses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Status', true), array('controller' => 'deal_statuses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Types', true), array('controller' => 'deal_types', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Type', true), array('controller' => 'deal_types', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('controller' => 'destinations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('controller' => 'destinations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="dealAvailabilities form">
<?php echo $this->Form->create('DealAvailability');?>
	<fieldset>
 		<legend><?php __('Add Deal Availability'); ?></legend>
	<?php
	//Takes a start and end date and populates deal_availabilities with each day in between and the num_reservations
		echo $this->Form->input('deal_id');
		
		echo $this->Form->input('start_date', array('type' => 'date', 'dateFormat' => 'YMD'));
		echo $this->Form->input('end_date', array('type' => 'date', 'dateFormat' => 'YMD'));
		//echo $this->Form->input('reservation_date');
		echo $this->Form->input('num_available');
		
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Deal Availabilities', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
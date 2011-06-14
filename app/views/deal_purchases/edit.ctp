<div class="dealPurchases form">
<?php echo $this->Form->create('DealPurchase');?>
	<fieldset>
 		<legend><?php __('Edit Deal Purchase'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('deal_id');
		echo $this->Form->input('traveler_id');
		echo $this->Form->input('confirmation_code');
		echo $this->Form->input('start_date');
		echo $this->Form->input('end_date');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('DealPurchase.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('DealPurchase.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Travelers', true), array('controller' => 'user_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Traveler', true), array('controller' => 'user_details', 'action' => 'add')); ?> </li>
	</ul>
</div>
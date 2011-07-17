<div class="passengers form">
<?php echo $this->Form->create('Passenger');?>
	<fieldset>
		<legend><?php __('Add Passenger'); ?></legend>
	<?php
		echo $this->Form->input('first_name');
		echo $this->Form->input('last_name');
		echo $this->Form->input('birthday');
		echo $this->Form->input('country_id');
		echo $this->Form->input('deal_purchase_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Passengers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('controller' => 'deal_purchases', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('controller' => 'deal_purchases', 'action' => 'add')); ?> </li>
	</ul>
</div>
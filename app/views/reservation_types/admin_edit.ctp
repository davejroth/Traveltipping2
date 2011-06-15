<div class="reservationTypes form">
<?php echo $this->Form->create('ReservationType');?>
	<fieldset>
		<legend><?php __('Admin Edit Reservation Type'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('ReservationType.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('ReservationType.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Reservation Types', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
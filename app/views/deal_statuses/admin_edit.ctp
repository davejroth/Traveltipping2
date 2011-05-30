<div class="dealStatuses form">
<?php echo $this->Form->create('DealStatus');?>
	<fieldset>
 		<legend><?php __('Admin Edit Deal Status'); ?></legend>
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

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('DealStatus.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('DealStatus.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="destinations form">
<?php echo $this->Form->create('Destination');?>
	<fieldset>
 		<legend><?php __('Admin Edit Destination'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('top_five');
		echo $this->Form->input('getting_there');
		echo $this->Form->input('title');
		echo $this->Form->input('country_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Destination.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Destination.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
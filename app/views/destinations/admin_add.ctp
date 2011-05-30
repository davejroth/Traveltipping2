<div class="destinations form">
<?php echo $this->Form->create('Destination');?>
	<fieldset>
 		<legend><?php __('Admin Add Destination'); ?></legend>
	<?php
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

		<li><?php echo $this->Html->link(__('List Destinations', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
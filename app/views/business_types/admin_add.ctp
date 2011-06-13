<div class="businessTypes form">
<?php echo $this->Form->create('BusinessType');?>
	<fieldset>
		<legend><?php __('Admin Add Business Type'); ?></legend>
	<?php
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Business Types', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
	</ul>
</div>
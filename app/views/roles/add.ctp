<div class="roles form">
<?php echo $this->Form->create('Role');?>
	<fieldset>
		<legend><?php __('Add Role'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('alias');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Roles', true), array('action' => 'index'));?></li>
	</ul>
</div>
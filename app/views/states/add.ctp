<div class="states form">
<?php echo $this->Form->create('State');?>
	<fieldset>
 		<legend><?php __('Add State'); ?></legend>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('country_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List States', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
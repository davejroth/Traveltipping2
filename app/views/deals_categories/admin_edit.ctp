<div class="dealsCategories form">
<?php echo $this->Form->create('DealsCategory');?>
	<fieldset>
		<legend><?php __('Admin Edit Deals Category'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('deal_id');
		echo $this->Form->input('category_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('DealsCategory.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('DealsCategory.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Deals Categories', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories', true), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category', true), array('controller' => 'categories', 'action' => 'add')); ?> </li>
	</ul>
</div>
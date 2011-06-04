<div class="dealsRegions form">
<?php echo $this->Form->create('DealsRegion');?>
	<fieldset>
		<legend><?php __('Add Deals Region'); ?></legend>
	<?php
		echo $this->Form->input('deal_id');
		echo $this->Form->input('region_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Deals Regions', true), array('action' => 'index'));?></li>
	</ul>
</div>
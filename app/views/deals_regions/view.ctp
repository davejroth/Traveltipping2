<div class="dealsRegions view">
<h2><?php  __('Deals Region');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealsRegion['DealsRegion']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealsRegion['DealsRegion']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealsRegion['DealsRegion']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Deal Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealsRegion['DealsRegion']['deal_id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Region Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealsRegion['DealsRegion']['region_id']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Deals Region', true), array('action' => 'edit', $dealsRegion['DealsRegion']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Deals Region', true), array('action' => 'delete', $dealsRegion['DealsRegion']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealsRegion['DealsRegion']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals Regions', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deals Region', true), array('action' => 'add')); ?> </li>
	</ul>
</div>

<div class="dealsRegions index">
	<h2><?php __('Deals Regions');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('deal_id');?></th>
			<th><?php echo $this->Paginator->sort('region_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($dealsRegions as $dealsRegion):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $dealsRegion['DealsRegion']['id']; ?>&nbsp;</td>
		<td><?php echo $dealsRegion['DealsRegion']['created']; ?>&nbsp;</td>
		<td><?php echo $dealsRegion['DealsRegion']['modified']; ?>&nbsp;</td>
		<td><?php echo $dealsRegion['DealsRegion']['deal_id']; ?>&nbsp;</td>
		<td><?php echo $dealsRegion['DealsRegion']['region_id']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $dealsRegion['DealsRegion']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $dealsRegion['DealsRegion']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $dealsRegion['DealsRegion']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealsRegion['DealsRegion']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
	));
	?>	</p>

	<div class="paging">
		<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
	 | 	<?php echo $this->Paginator->numbers();?>
 |
		<?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
	</div>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Deals Region', true), array('action' => 'add')); ?></li>
	</ul>
</div>
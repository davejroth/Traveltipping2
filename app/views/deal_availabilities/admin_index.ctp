<div class="dealAvailabilities index">
	<h2><?php __('Deal Availabilities');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('deal_id');?></th>
			<th><?php echo $this->Paginator->sort('reservation_date');?></th>
			<th><?php echo $this->Paginator->sort('num_available');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($dealAvailabilities as $dealAvailability):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $dealAvailability['DealAvailability']['id']; ?>&nbsp;</td>
		<td><?php echo $dealAvailability['DealAvailability']['created']; ?>&nbsp;</td>
		<td><?php echo $dealAvailability['DealAvailability']['modified']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($dealAvailability['Deal']['title'], array('controller' => 'deals', 'action' => 'view', $dealAvailability['Deal']['id'])); ?>
		</td>
		<td><?php echo $dealAvailability['DealAvailability']['reservation_date']; ?>&nbsp;</td>
		<td><?php echo $dealAvailability['DealAvailability']['num_available']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $dealAvailability['DealAvailability']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $dealAvailability['DealAvailability']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $dealAvailability['DealAvailability']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealAvailability['DealAvailability']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Deal Availability', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
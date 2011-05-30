<div class="destinations index">
	<h2><?php __('Destinations');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('top_five');?></th>
			<th><?php echo $this->Paginator->sort('getting_there');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('country_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($destinations as $destination):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $destination['Destination']['id']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['created']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['modified']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['top_five']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['getting_there']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['title']; ?>&nbsp;</td>
		<td><?php echo $destination['Destination']['country_id']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $destination['Destination']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $destination['Destination']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $destination['Destination']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $destination['Destination']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Destination', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="travelers index">
	<h2><?php __('Travelers');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
			<th><?php echo $this->Paginator->sort('is_male');?></th>
			<th><?php echo $this->Paginator->sort('birthday');?></th>
			<th><?php echo $this->Paginator->sort('state_id');?></th>
			<th><?php echo $this->Paginator->sort('postal_code');?></th>
			<th><?php echo $this->Paginator->sort('first_name');?></th>
			<th><?php echo $this->Paginator->sort('last_name');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($travelers as $traveler):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $traveler['Traveler']['id']; ?>&nbsp;</td>
		<td><?php echo $traveler['Traveler']['created']; ?>&nbsp;</td>
		<td><?php echo $traveler['Traveler']['modified']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($traveler['User']['name'], array('controller' => 'users', 'action' => 'view', $traveler['User']['id'])); ?>
		</td>
		<td><?php echo $traveler['Traveler']['is_male']; ?>&nbsp;</td>
		<td><?php echo $traveler['Traveler']['birthday']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($traveler['State']['name'], array('controller' => 'states', 'action' => 'view', $traveler['State']['id'])); ?>
		</td>
		<td><?php echo $traveler['Traveler']['postal_code']; ?>&nbsp;</td>
		<td><?php echo $traveler['Traveler']['first_name']; ?>&nbsp;</td>
		<td><?php echo $traveler['Traveler']['last_name']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $traveler['Traveler']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $traveler['Traveler']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $traveler['Traveler']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $traveler['Traveler']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Traveler', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('controller' => 'states', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('controller' => 'states', 'action' => 'add')); ?> </li>
	</ul>
</div>
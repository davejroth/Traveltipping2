<div class="venues index">
	<h2><?php __('Venues');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('website');?></th>
			<th><?php echo $this->Paginator->sort('address1');?></th>
			<th><?php echo $this->Paginator->sort('address2');?></th>
			<th><?php echo $this->Paginator->sort('city');?></th>
			<th><?php echo $this->Paginator->sort('state');?></th>
			<th><?php echo $this->Paginator->sort('postal_code');?></th>
			<th><?php echo $this->Paginator->sort('country_id');?></th>
			<th><?php echo $this->Paginator->sort('merchant_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($venues as $venue):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $venue['Venue']['id']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['created']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['modified']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['name']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['email']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['website']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['address1']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['address2']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['city']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['state']; ?>&nbsp;</td>
		<td><?php echo $venue['Venue']['postal_code']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($venue['Country']['name'], array('controller' => 'countries', 'action' => 'view', $venue['Country']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($venue['Merchant']['business_name'], array('controller' => 'merchants', 'action' => 'view', $venue['Merchant']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $venue['Venue']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $venue['Venue']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $venue['Venue']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $venue['Venue']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Venue', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Merchants', true), array('controller' => 'merchants', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant', true), array('controller' => 'merchants', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
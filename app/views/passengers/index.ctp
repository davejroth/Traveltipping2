<div class="passengers index">
	<h2><?php __('Passengers');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('first_name');?></th>
			<th><?php echo $this->Paginator->sort('last_name');?></th>
			<th><?php echo $this->Paginator->sort('birthday');?></th>
			<th><?php echo $this->Paginator->sort('country_id');?></th>
			<th><?php echo $this->Paginator->sort('deal_purchase_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($passengers as $passenger):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $passenger['Passenger']['id']; ?>&nbsp;</td>
		<td><?php echo $passenger['Passenger']['created']; ?>&nbsp;</td>
		<td><?php echo $passenger['Passenger']['modified']; ?>&nbsp;</td>
		<td><?php echo $passenger['Passenger']['first_name']; ?>&nbsp;</td>
		<td><?php echo $passenger['Passenger']['last_name']; ?>&nbsp;</td>
		<td><?php echo $passenger['Passenger']['birthday']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($passenger['Country']['name'], array('controller' => 'countries', 'action' => 'view', $passenger['Country']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($passenger['DealPurchase']['id'], array('controller' => 'deal_purchases', 'action' => 'view', $passenger['DealPurchase']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $passenger['Passenger']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $passenger['Passenger']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $passenger['Passenger']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $passenger['Passenger']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Passenger', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('controller' => 'deal_purchases', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('controller' => 'deal_purchases', 'action' => 'add')); ?> </li>
	</ul>
</div>
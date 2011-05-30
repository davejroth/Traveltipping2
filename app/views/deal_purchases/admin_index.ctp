<div class="dealPurchases index">
	<h2><?php __('Deal Purchases');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('deal_id');?></th>
			<th><?php echo $this->Paginator->sort('user_detail_id');?></th>
			<th><?php echo $this->Paginator->sort('confirmation_code');?></th>
			<th><?php echo $this->Paginator->sort('start_date');?></th>
			<th><?php echo $this->Paginator->sort('end_date');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($dealPurchases as $dealPurchase):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $dealPurchase['DealPurchase']['id']; ?>&nbsp;</td>
		<td><?php echo $dealPurchase['DealPurchase']['created']; ?>&nbsp;</td>
		<td><?php echo $dealPurchase['DealPurchase']['modified']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($dealPurchase['Deal']['title'], array('controller' => 'deals', 'action' => 'view', $dealPurchase['Deal']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($dealPurchase['UserDetail']['id'], array('controller' => 'user_details', 'action' => 'view', $dealPurchase['UserDetail']['id'])); ?>
		</td>
		<td><?php echo $dealPurchase['DealPurchase']['confirmation_code']; ?>&nbsp;</td>
		<td><?php echo $dealPurchase['DealPurchase']['start_date']; ?>&nbsp;</td>
		<td><?php echo $dealPurchase['DealPurchase']['end_date']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $dealPurchase['DealPurchase']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $dealPurchase['DealPurchase']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $dealPurchase['DealPurchase']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealPurchase['DealPurchase']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List User Details', true), array('controller' => 'user_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User Detail', true), array('controller' => 'user_details', 'action' => 'add')); ?> </li>
	</ul>
</div>
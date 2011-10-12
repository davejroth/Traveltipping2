<div class="deals index">
    <h2><?php 	echo $this->Html->link('Create New Deal', array('controller' => 'deals', 'action' => 'admin_add', 'admin' => 1),
		array( 'title'=>'Create New Deal')); ?>
	<h2><?php __('Deals');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('merchant_id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('deal_status');?></th>
			<th><?php echo $this->Paginator->sort('discounted_price');?></th>
			<th><?php echo $this->Paginator->sort('deal_live');?></th>
			<th><?php echo $this->Paginator->sort('deal_close');?></th>
			<th><?php echo $this->Paginator->sort('deal_valid');?></th>
			<th><?php echo $this->Paginator->sort('deal_expire');?></th>
			<th><?php echo $this->Paginator->sort('max_purchases');?></th>
			<th><?php echo $this->Paginator->sort('reservation_type_id');?></th>
			<th><?php echo $this->Paginator->sort('max_nights');?></th>
			<th><?php echo $this->Paginator->sort('venue_name');?></th>
			<th><?php echo $this->Paginator->sort('venue_email');?></th>

			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($deals as $deal):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td>
			<?php echo $this->Html->link($deal['Venue']['Merchant']['business_name'], array('controller' => 'merchants', 'action' => 'view', $deal['Venue']['Merchant']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['name']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['title']; ?>&nbsp;</td>
		<td><?php echo $deal['DealStatus']['name']; ?>&nbsp;</td>
		<td><?php echo "$" . $deal['Deal']['discounted_price']; ?>&nbsp;</td>
		<td><?php echo date_format(date_create($deal['Deal']['deal_live']), 'm/j/y'); ?>&nbsp;</td>
		<td><?php echo date_format(date_create($deal['Deal']['deal_close']), 'm/j/y'); ?>&nbsp;</td>
		<td><?php echo date_format(date_create($deal['Deal']['deal_valid']), 'm/j/y'); ?>&nbsp;</td>
		<td><?php echo date_format(date_create($deal['Deal']['deal_expire']), 'm/j/y'); ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['max_purchases']; ?>&nbsp;</td>
		<td>
			<?php echo $deal['ReservationType']['name'] ?>
		</td>
		<td><?php echo $deal['Deal']['max_nights']; ?>&nbsp;</td>
		<td><?php echo $deal['Venue']['name']; ?>&nbsp;</td>
		<td><?php echo $deal['Venue']['email']; ?>&nbsp;</td>



		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $deal['Deal']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $deal['Deal']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $deal['Deal']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $deal['Deal']['id'])); ?>
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

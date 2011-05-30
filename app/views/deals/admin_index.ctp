<div class="deals index">
	<h2><?php __('Deals');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('merchant_detail_id');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('slug');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('details');?></th>
			<th><?php echo $this->Paginator->sort('original_price');?></th>
			<th><?php echo $this->Paginator->sort('discounted_price');?></th>
			<th><?php echo $this->Paginator->sort('deal_start_date');?></th>
			<th><?php echo $this->Paginator->sort('deal_end_date');?></th>
			<th><?php echo $this->Paginator->sort('trip_start_date');?></th>
			<th><?php echo $this->Paginator->sort('trip_end_date');?></th>
			<th><?php echo $this->Paginator->sort('max_purchases');?></th>
			<th><?php echo $this->Paginator->sort('current_purchases');?></th>
			<th><?php echo $this->Paginator->sort('comission_percentage');?></th>
			<th><?php echo $this->Paginator->sort('deal_status_id');?></th>
			<th><?php echo $this->Paginator->sort('deal_type_id');?></th>
			<th><?php echo $this->Paginator->sort('private_note');?></th>
			<th><?php echo $this->Paginator->sort('destination_id');?></th>
			<th><?php echo $this->Paginator->sort('street_address');?></th>
			<th><?php echo $this->Paginator->sort('city_id');?></th>
			<th><?php echo $this->Paginator->sort('zip_code');?></th>
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
		<td><?php echo $deal['Deal']['id']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['created']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['modified']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['MerchantDetail']['id'], array('controller' => 'merchant_details', 'action' => 'view', $deal['MerchantDetail']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['title']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['slug']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['description']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['details']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['original_price']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['discounted_price']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_start_date']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_end_date']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['trip_start_date']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['trip_end_date']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['max_purchases']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['current_purchases']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['comission_percentage']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['DealStatus']['name'], array('controller' => 'deal_statuses', 'action' => 'view', $deal['DealStatus']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($deal['DealType']['name'], array('controller' => 'deal_types', 'action' => 'view', $deal['DealType']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['private_note']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['Destination']['title'], array('controller' => 'destinations', 'action' => 'view', $deal['Destination']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['street_address']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['City']['name'], array('controller' => 'cities', 'action' => 'view', $deal['City']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['zip_code']; ?>&nbsp;</td>
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
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Deal', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('controller' => 'deal_statuses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Status', true), array('controller' => 'deal_statuses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Types', true), array('controller' => 'deal_types', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Type', true), array('controller' => 'deal_types', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('controller' => 'destinations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('controller' => 'destinations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
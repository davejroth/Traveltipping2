<div class="deals index">
	<h2><?php __('Deals');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('slug');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('fine_print');?></th>
			<th><?php echo $this->Paginator->sort('highlights');?></th>
			<th><?php echo $this->Paginator->sort('host_info');?></th>
			<th><?php echo $this->Paginator->sort('getting_there');?></th>
			<th><?php echo $this->Paginator->sort('things_to_do');?></th>
			<th><?php echo $this->Paginator->sort('original_price');?></th>
			<th><?php echo $this->Paginator->sort('discounted_price');?></th>
			<th><?php echo $this->Paginator->sort('deal_live');?></th>
			<th><?php echo $this->Paginator->sort('deal_close');?></th>
			<th><?php echo $this->Paginator->sort('deal_valid');?></th>
			<th><?php echo $this->Paginator->sort('deal_expire');?></th>
			<th><?php echo $this->Paginator->sort('is_timed');?></th>
			<th><?php echo $this->Paginator->sort('max_purchases');?></th>
			<th><?php echo $this->Paginator->sort('max_nights');?></th>
			<th><?php echo $this->Paginator->sort('flat_fee');?></th>
			<th><?php echo $this->Paginator->sort('comission_percentage');?></th>
			<th><?php echo $this->Paginator->sort('private_note');?></th>
			<th><?php echo $this->Paginator->sort('image1');?></th>
			<th><?php echo $this->Paginator->sort('image2');?></th>
			<th><?php echo $this->Paginator->sort('image3');?></th>
			<th><?php echo $this->Paginator->sort('image4');?></th>
			<th><?php echo $this->Paginator->sort('image5');?></th>
			<th><?php echo $this->Paginator->sort('image6');?></th>
			<th><?php echo $this->Paginator->sort('venue_name');?></th>
			<th><?php echo $this->Paginator->sort('venue_email');?></th>
			<th><?php echo $this->Paginator->sort('address1');?></th>
			<th><?php echo $this->Paginator->sort('address2');?></th>
			<th><?php echo $this->Paginator->sort('city');?></th>
			<th><?php echo $this->Paginator->sort('state');?></th>
			<th><?php echo $this->Paginator->sort('zip');?></th>
			<th><?php echo $this->Paginator->sort('country_id');?></th>
			<th><?php echo $this->Paginator->sort('deal_status');?></th>
			<th><?php echo $this->Paginator->sort('merchant_id');?></th>
			<th><?php echo $this->Paginator->sort('reservation_type_id');?></th>
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
		<td><?php echo $deal['Deal']['name']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['title']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['slug']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['description']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['fine_print']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['highlights']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['host_info']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['getting_there']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['things_to_do']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['original_price']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['discounted_price']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_live']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_close']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_valid']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['deal_expire']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['is_timed']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['max_purchases']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['max_nights']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['flat_fee']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['comission_percentage']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['private_note']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image1']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image2']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image3']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image4']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image5']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['image6']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['venue_name']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['venue_email']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['address1']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['address2']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['city']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['state']; ?>&nbsp;</td>
		<td><?php echo $deal['Deal']['zip']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['Country']['name'], array('controller' => 'countries', 'action' => 'view', $deal['Country']['id'])); ?>
		</td>
		<td><?php echo $deal['Deal']['deal_status']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($deal['Merchant']['business_name'], array('controller' => 'merchants', 'action' => 'view', $deal['Merchant']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($deal['ReservationType']['name'], array('controller' => 'reservation_types', 'action' => 'view', $deal['ReservationType']['id'])); ?>
		</td>
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
		<li><?php echo $this->Html->link(__('List Merchants', true), array('controller' => 'merchants', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant', true), array('controller' => 'merchants', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('controller' => 'deal_statuses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Status', true), array('controller' => 'deal_statuses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('controller' => 'destinations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('controller' => 'destinations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Reservation Types', true), array('controller' => 'reservation_types', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Reservation Type', true), array('controller' => 'reservation_types', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Availabilities', true), array('controller' => 'deal_availabilities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Availability', true), array('controller' => 'deal_availabilities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('controller' => 'deal_purchases', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('controller' => 'deal_purchases', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories', true), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category', true), array('controller' => 'categories', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Regions', true), array('controller' => 'regions', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Region', true), array('controller' => 'regions', 'action' => 'add')); ?> </li>
	</ul>
</div>
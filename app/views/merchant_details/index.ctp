<div class="merchantDetails index">
	<h2><?php __('Merchant Details');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('about_us');?></th>
			<th><?php echo $this->Paginator->sort('website');?></th>
			<th><?php echo $this->Paginator->sort('business_reviews');?></th>
			<th><?php echo $this->Paginator->sort('business_name');?></th>
			<th><?php echo $this->Paginator->sort('city_id');?></th>
			<th><?php echo $this->Paginator->sort('postal_code');?></th>
			<th><?php echo $this->Paginator->sort('address');?></th>
			<th><?php echo $this->Paginator->sort('second_address');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($merchantDetails as $merchantDetail):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $merchantDetail['MerchantDetail']['id']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['created']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['modified']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['about_us']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['website']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['business_reviews']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['business_name']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($merchantDetail['City']['name'], array('controller' => 'cities', 'action' => 'view', $merchantDetail['City']['id'])); ?>
		</td>
		<td><?php echo $merchantDetail['MerchantDetail']['postal_code']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['address']; ?>&nbsp;</td>
		<td><?php echo $merchantDetail['MerchantDetail']['second_address']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($merchantDetail['User']['name'], array('controller' => 'users', 'action' => 'view', $merchantDetail['User']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $merchantDetail['MerchantDetail']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $merchantDetail['MerchantDetail']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $merchantDetail['MerchantDetail']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $merchantDetail['MerchantDetail']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
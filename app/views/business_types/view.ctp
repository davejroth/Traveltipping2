<div class="businessTypes view">
<h2><?php  __('Business Type');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $businessType['BusinessType']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $businessType['BusinessType']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $businessType['BusinessType']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $businessType['BusinessType']['name']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Business Type', true), array('action' => 'edit', $businessType['BusinessType']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Business Type', true), array('action' => 'delete', $businessType['BusinessType']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $businessType['BusinessType']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Business Types', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Business Type', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Merchant Details');?></h3>
	<?php if (!empty($businessType['MerchantDetail'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Created'); ?></th>
		<th><?php __('Modified'); ?></th>
		<th><?php __('About Us'); ?></th>
		<th><?php __('Website'); ?></th>
		<th><?php __('Business Reviews'); ?></th>
		<th><?php __('Business Name'); ?></th>
		<th><?php __('City'); ?></th>
		<th><?php __('Postal Code'); ?></th>
		<th><?php __('Address'); ?></th>
		<th><?php __('Second Address'); ?></th>
		<th><?php __('User Id'); ?></th>
		<th><?php __('State'); ?></th>
		<th><?php __('First Name'); ?></th>
		<th><?php __('Last Name'); ?></th>
		<th><?php __('Phone'); ?></th>
		<th><?php __('Country Id'); ?></th>
		<th><?php __('Business Type Id'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($businessType['MerchantDetail'] as $merchantDetail):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $merchantDetail['id'];?></td>
			<td><?php echo $merchantDetail['created'];?></td>
			<td><?php echo $merchantDetail['modified'];?></td>
			<td><?php echo $merchantDetail['about_us'];?></td>
			<td><?php echo $merchantDetail['website'];?></td>
			<td><?php echo $merchantDetail['business_reviews'];?></td>
			<td><?php echo $merchantDetail['business_name'];?></td>
			<td><?php echo $merchantDetail['city'];?></td>
			<td><?php echo $merchantDetail['postal_code'];?></td>
			<td><?php echo $merchantDetail['address'];?></td>
			<td><?php echo $merchantDetail['second_address'];?></td>
			<td><?php echo $merchantDetail['user_id'];?></td>
			<td><?php echo $merchantDetail['state'];?></td>
			<td><?php echo $merchantDetail['first_name'];?></td>
			<td><?php echo $merchantDetail['last_name'];?></td>
			<td><?php echo $merchantDetail['phone'];?></td>
			<td><?php echo $merchantDetail['country_id'];?></td>
			<td><?php echo $merchantDetail['business_type_id'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'merchant_details', 'action' => 'view', $merchantDetail['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'merchant_details', 'action' => 'edit', $merchantDetail['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'merchant_details', 'action' => 'delete', $merchantDetail['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $merchantDetail['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>

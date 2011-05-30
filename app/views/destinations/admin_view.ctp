<div class="destinations view">
<h2><?php  __('Destination');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Top Five'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['top_five']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Getting There'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['getting_there']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Title'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['title']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Country Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $destination['Destination']['country_id']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Destination', true), array('action' => 'edit', $destination['Destination']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Destination', true), array('action' => 'delete', $destination['Destination']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $destination['Destination']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Deals');?></h3>
	<?php if (!empty($destination['Deal'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Created'); ?></th>
		<th><?php __('Modified'); ?></th>
		<th><?php __('Merchant Id'); ?></th>
		<th><?php __('Title'); ?></th>
		<th><?php __('Slug'); ?></th>
		<th><?php __('Description'); ?></th>
		<th><?php __('Details'); ?></th>
		<th><?php __('Original Price'); ?></th>
		<th><?php __('Discounted Price'); ?></th>
		<th><?php __('Deal Start Date'); ?></th>
		<th><?php __('Deal End Date'); ?></th>
		<th><?php __('Trip Start Date'); ?></th>
		<th><?php __('Trip End Date'); ?></th>
		<th><?php __('Max Purchases'); ?></th>
		<th><?php __('Current Purchases'); ?></th>
		<th><?php __('Comission Percentage'); ?></th>
		<th><?php __('Deal Status Id'); ?></th>
		<th><?php __('Deal Type Id'); ?></th>
		<th><?php __('Private Note'); ?></th>
		<th><?php __('Destination Id'); ?></th>
		<th><?php __('Street Address'); ?></th>
		<th><?php __('City Id'); ?></th>
		<th><?php __('Zip Code'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($destination['Deal'] as $deal):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $deal['id'];?></td>
			<td><?php echo $deal['created'];?></td>
			<td><?php echo $deal['modified'];?></td>
			<td><?php echo $deal['merchant_id'];?></td>
			<td><?php echo $deal['title'];?></td>
			<td><?php echo $deal['slug'];?></td>
			<td><?php echo $deal['description'];?></td>
			<td><?php echo $deal['details'];?></td>
			<td><?php echo $deal['original_price'];?></td>
			<td><?php echo $deal['discounted_price'];?></td>
			<td><?php echo $deal['deal_start_date'];?></td>
			<td><?php echo $deal['deal_end_date'];?></td>
			<td><?php echo $deal['trip_start_date'];?></td>
			<td><?php echo $deal['trip_end_date'];?></td>
			<td><?php echo $deal['max_purchases'];?></td>
			<td><?php echo $deal['current_purchases'];?></td>
			<td><?php echo $deal['comission_percentage'];?></td>
			<td><?php echo $deal['deal_status_id'];?></td>
			<td><?php echo $deal['deal_type_id'];?></td>
			<td><?php echo $deal['private_note'];?></td>
			<td><?php echo $deal['destination_id'];?></td>
			<td><?php echo $deal['street_address'];?></td>
			<td><?php echo $deal['city_id'];?></td>
			<td><?php echo $deal['zip_code'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'deals', 'action' => 'view', $deal['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'deals', 'action' => 'edit', $deal['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'deals', 'action' => 'delete', $deal['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $deal['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>

<div class="venues view">
<h2><?php  __('Venue');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Email'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['email']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Website'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['website']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Address1'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['address1']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Address2'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['address2']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('City'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['city']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('State'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['state']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Postal Code'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $venue['Venue']['postal_code']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Country'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($venue['Country']['name'], array('controller' => 'countries', 'action' => 'view', $venue['Country']['id'])); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Merchant'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($venue['Merchant']['business_name'], array('controller' => 'merchants', 'action' => 'view', $venue['Merchant']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Venue', true), array('action' => 'edit', $venue['Venue']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Venue', true), array('action' => 'delete', $venue['Venue']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $venue['Venue']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Venues', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Venue', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Merchants', true), array('controller' => 'merchants', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant', true), array('controller' => 'merchants', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Deals');?></h3>
	<?php if (!empty($venue['Deal'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Created'); ?></th>
		<th><?php __('Modified'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Title'); ?></th>
		<th><?php __('Slug'); ?></th>
		<th><?php __('Description'); ?></th>
		<th><?php __('Fine Print'); ?></th>
		<th><?php __('Highlights'); ?></th>
		<th><?php __('Venue Info'); ?></th>
		<th><?php __('Getting There'); ?></th>
		<th><?php __('Things To Do'); ?></th>
		<th><?php __('Destination'); ?></th>
		<th><?php __('Original Price'); ?></th>
		<th><?php __('Discounted Price'); ?></th>
		<th><?php __('Deal Live'); ?></th>
		<th><?php __('Deal Close'); ?></th>
		<th><?php __('Deal Valid'); ?></th>
		<th><?php __('Deal Expire'); ?></th>
		<th><?php __('Is Timed'); ?></th>
		<th><?php __('Max Purchases'); ?></th>
		<th><?php __('Max Nights'); ?></th>
		<th><?php __('Flat Fee'); ?></th>
		<th><?php __('Comission Percentage'); ?></th>
		<th><?php __('Private Note'); ?></th>
		<th><?php __('Image1'); ?></th>
		<th><?php __('Image2'); ?></th>
		<th><?php __('Image3'); ?></th>
		<th><?php __('Image4'); ?></th>
		<th><?php __('Image5'); ?></th>
		<th><?php __('Image6'); ?></th>
		<th><?php __('Deal Status Id'); ?></th>
		<th><?php __('Merchant Id'); ?></th>
		<th><?php __('Reservation Type Id'); ?></th>
		<th><?php __('Venue Id'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($venue['Deal'] as $deal):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $deal['id'];?></td>
			<td><?php echo $deal['created'];?></td>
			<td><?php echo $deal['modified'];?></td>
			<td><?php echo $deal['name'];?></td>
			<td><?php echo $deal['title'];?></td>
			<td><?php echo $deal['slug'];?></td>
			<td><?php echo $deal['description'];?></td>
			<td><?php echo $deal['fine_print'];?></td>
			<td><?php echo $deal['highlights'];?></td>
			<td><?php echo $deal['venue_info'];?></td>
			<td><?php echo $deal['getting_there'];?></td>
			<td><?php echo $deal['things_to_do'];?></td>
			<td><?php echo $deal['destination'];?></td>
			<td><?php echo $deal['original_price'];?></td>
			<td><?php echo $deal['discounted_price'];?></td>
			<td><?php echo $deal['deal_live'];?></td>
			<td><?php echo $deal['deal_close'];?></td>
			<td><?php echo $deal['deal_valid'];?></td>
			<td><?php echo $deal['deal_expire'];?></td>
			<td><?php echo $deal['is_timed'];?></td>
			<td><?php echo $deal['max_purchases'];?></td>
			<td><?php echo $deal['max_nights'];?></td>
			<td><?php echo $deal['flat_fee'];?></td>
			<td><?php echo $deal['comission_percentage'];?></td>
			<td><?php echo $deal['private_note'];?></td>
			<td><?php echo $deal['image1'];?></td>
			<td><?php echo $deal['image2'];?></td>
			<td><?php echo $deal['image3'];?></td>
			<td><?php echo $deal['image4'];?></td>
			<td><?php echo $deal['image5'];?></td>
			<td><?php echo $deal['image6'];?></td>
			<td><?php echo $deal['deal_status_id'];?></td>
			<td><?php echo $deal['merchant_id'];?></td>
			<td><?php echo $deal['reservation_type_id'];?></td>
			<td><?php echo $deal['venue_id'];?></td>
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

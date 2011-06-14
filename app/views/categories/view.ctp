<div class="categories view">
<h2><?php  __('Category');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $category['Category']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $category['Category']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $category['Category']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $category['Category']['name']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Category', true), array('action' => 'edit', $category['Category']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Category', true), array('action' => 'delete', $category['Category']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $category['Category']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Deals');?></h3>
	<?php if (!empty($category['Deal'])):?>
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
		<th><?php __('Zip Code'); ?></th>
		<th><?php __('Is Timed'); ?></th>
		<th><?php __('City'); ?></th>
		<th><?php __('State'); ?></th>
		<th><?php __('Country'); ?></th>
		<th><?php __('Reservation Type Id'); ?></th>
		<th><?php __('Company Name'); ?></th>
		<th><?php __('Displayed Email'); ?></th>
		<th><?php __('Max Nights'); ?></th>
		<th><?php __('Flat Fee'); ?></th>
		<th><?php __('Image1'); ?></th>
		<th><?php __('Image2'); ?></th>
		<th><?php __('Image3'); ?></th>
		<th><?php __('Image4'); ?></th>
		<th><?php __('Image5'); ?></th>
		<th><?php __('Image6'); ?></th>
		<th><?php __('About Host'); ?></th>
		<th><?php __('Highlights'); ?></th>
		<th><?php __('Getting There'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($category['Deal'] as $deal):
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
			<td><?php echo $deal['zip_code'];?></td>
			<td><?php echo $deal['is_timed'];?></td>
			<td><?php echo $deal['city'];?></td>
			<td><?php echo $deal['state'];?></td>
			<td><?php echo $deal['country'];?></td>
			<td><?php echo $deal['reservation_type_id'];?></td>
			<td><?php echo $deal['company_name'];?></td>
			<td><?php echo $deal['displayed_email'];?></td>
			<td><?php echo $deal['max_nights'];?></td>
			<td><?php echo $deal['flat_fee'];?></td>
			<td><?php echo $deal['image1'];?></td>
			<td><?php echo $deal['image2'];?></td>
			<td><?php echo $deal['image3'];?></td>
			<td><?php echo $deal['image4'];?></td>
			<td><?php echo $deal['image5'];?></td>
			<td><?php echo $deal['image6'];?></td>
			<td><?php echo $deal['about_host'];?></td>
			<td><?php echo $deal['highlights'];?></td>
			<td><?php echo $deal['getting_there'];?></td>
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

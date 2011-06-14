<div class="dealPurchases view">
<h2><?php  __('Deal Purchase');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Deal'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($dealPurchase['Deal']['title'], array('controller' => 'deals', 'action' => 'view', $dealPurchase['Deal']['id'])); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Traveler'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($dealPurchase['Traveler']['id'], array('controller' => 'user_details', 'action' => 'view', $dealPurchase['Traveler']['id'])); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Confirmation Code'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['confirmation_code']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Start Date'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['start_date']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('End Date'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealPurchase['DealPurchase']['end_date']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Deal Purchase', true), array('action' => 'edit', $dealPurchase['DealPurchase']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Deal Purchase', true), array('action' => 'delete', $dealPurchase['DealPurchase']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealPurchase['DealPurchase']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Purchase', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Travelers', true), array('controller' => 'user_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Traveler', true), array('controller' => 'user_details', 'action' => 'add')); ?> </li>
	</ul>
</div>

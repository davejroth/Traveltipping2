<div class="dealAvailabilities view">
<h2><?php  __('Deal Availability');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealAvailability['DealAvailability']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealAvailability['DealAvailability']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealAvailability['DealAvailability']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Deal'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($dealAvailability['Deal']['title'], array('controller' => 'deals', 'action' => 'view', $dealAvailability['Deal']['id'])); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Reservation Date'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealAvailability['DealAvailability']['reservation_date']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Num Available'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $dealAvailability['DealAvailability']['num_available']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Deal Availability', true), array('action' => 'edit', $dealAvailability['DealAvailability']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Deal Availability', true), array('action' => 'delete', $dealAvailability['DealAvailability']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $dealAvailability['DealAvailability']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Availabilities', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Availability', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>

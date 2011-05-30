<div class="states view">
<h2><?php  __('State');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $state['State']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $state['State']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $state['State']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $state['State']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Country'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($state['Country']['name'], array('controller' => 'countries', 'action' => 'view', $state['Country']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit State', true), array('action' => 'edit', $state['State']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete State', true), array('action' => 'delete', $state['State']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $state['State']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Countries', true), array('controller' => 'countries', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Country', true), array('controller' => 'countries', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Cities');?></h3>
	<?php if (!empty($state['City'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Created'); ?></th>
		<th><?php __('Modified'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('State Id'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($state['City'] as $city):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $city['id'];?></td>
			<td><?php echo $city['created'];?></td>
			<td><?php echo $city['modified'];?></td>
			<td><?php echo $city['name'];?></td>
			<td><?php echo $city['state_id'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'cities', 'action' => 'view', $city['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'cities', 'action' => 'edit', $city['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'cities', 'action' => 'delete', $city['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $city['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>

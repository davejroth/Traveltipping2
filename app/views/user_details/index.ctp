<div class="userDetails index">
	<h2><?php __('User Details');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
			<th><?php echo $this->Paginator->sort('is_male');?></th>
			<th><?php echo $this->Paginator->sort('birthday');?></th>
			<th><?php echo $this->Paginator->sort('state_id');?></th>
			<th><?php echo $this->Paginator->sort('postal_code');?></th>
			<th><?php echo $this->Paginator->sort('first_name');?></th>
			<th><?php echo $this->Paginator->sort('last_name');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($userDetails as $userDetail):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $userDetail['UserDetail']['id']; ?>&nbsp;</td>
		<td><?php echo $userDetail['UserDetail']['created']; ?>&nbsp;</td>
		<td><?php echo $userDetail['UserDetail']['modified']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($userDetail['User']['name'], array('controller' => 'users', 'action' => 'view', $userDetail['User']['id'])); ?>
		</td>
		<td><?php echo $userDetail['UserDetail']['is_male']; ?>&nbsp;</td>
		<td><?php echo $userDetail['UserDetail']['birthday']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($userDetail['State']['name'], array('controller' => 'states', 'action' => 'view', $userDetail['State']['id'])); ?>
		</td>
		<td><?php echo $userDetail['UserDetail']['postal_code']; ?>&nbsp;</td>
		<td><?php echo $userDetail['UserDetail']['first_name']; ?>&nbsp;</td>
		<td><?php echo $userDetail['UserDetail']['last_name']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $userDetail['UserDetail']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $userDetail['UserDetail']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $userDetail['UserDetail']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $userDetail['UserDetail']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New User Detail', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List States', true), array('controller' => 'states', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New State', true), array('controller' => 'states', 'action' => 'add')); ?> </li>
	</ul>
</div>
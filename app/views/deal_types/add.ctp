<div class="dealTypes form">

<?php echo $this->Form->create('DealType');?>
	<fieldset>
 		<legend><?php __('Add Deal Type'); ?></legend>
	<?php
		echo $this->Form->input('name');
	?>
	</fieldset>
	
<?php echo $this->Form->end(__('Submit', true));?>
<?php
if ($session->check('Message.flash')) {
  $session->flash();
}
?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Deal Types', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
	</ul>
</div>
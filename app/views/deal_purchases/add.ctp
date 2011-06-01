<div class="dealPurchases form">
<?php echo $this->Form->create('DealPurchase', array('url' => array($deal['Deal']['id'])));?>

	<fieldset>
 		<legend><?php __('Add Deal Purchase'); ?></legend>
	<?php
		echo "<h2>";
		echo $deal['Deal']['id'];
		echo $deal['Deal']['title'];
		echo "</h2>";
		//echo $this->Form->input('deal_id');
		echo $this->Form->input('user_detail_id');
		//echo $this->Form->input('confirmation_code');
		echo $this->Form->input('start_date');
		echo $this->Form->input('end_date');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Deal Purchases', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('controller' => 'deals', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal', true), array('controller' => 'deals', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List User Details', true), array('controller' => 'user_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User Detail', true), array('controller' => 'user_details', 'action' => 'add')); ?> </li>
	</ul>
</div>
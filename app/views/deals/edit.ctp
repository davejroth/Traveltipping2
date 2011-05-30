<div class="deals form">
<?php echo $this->Form->create('Deal');?>
	<fieldset>
 		<legend><?php __('Edit Deal'); ?></legend>
	<?php
		echo "<h2>";
		echo "All Uploaded images <br>";
		//Show all available images
		foreach ($images as $node) {
		//echo $this->Html->image('/uploads/' . $node['Node']['slug']);
		//echo $node['Node']['title'];
		$mimeType = explode('/', $node['Node']['mime_type']);
        $mimeType = $mimeType['0'];
        if ($mimeType == 'image') {
		echo $this->Html->link($this->Image->resize('/uploads/' . $node['Node']['slug'], 100, 200), array('controller' => 'attachments', 'action' => 'edit', $node['Node']['id']), array('escape' => false));
		}
		}
		//Show attached pictures
		echo "<br> Attached images <br>";
		$nodeCount = count($thisdeal['Node']);
		for ($i = 0; $i < $nodeCount; $i++){
			echo $this->Html->link($this->Image->resize('/uploads/' . $thisdeal['Node'][$i]['slug'], 100, 200), array('controller' => 'attachments', 'action' => 'edit', $thisdeal['Node'][$i]['id']), array('escape' => false));
		}
		echo "</h2>";
		echo $form->input('Node');		
		echo $this->Form->input('id');
		echo $this->Form->input('merchant_detail_id');
		echo $this->Form->input('title');
		echo $this->Form->input('slug');
		echo $this->Form->input('description');
		echo $this->Form->input('details');
		echo $this->Form->input('original_price');
		echo $this->Form->input('discounted_price');
		echo $this->Form->input('is_timed',  array( 'label' => 'This deal should based on :',
		'options' => array('0' => 'Deal Max Quantity Reached', '1' => 'Deal Date End Reached' )));
		echo $this->Form->input('deal_start_date');
		echo $this->Form->input('deal_end_date');
		echo $this->Form->input('trip_start_date');
		echo $this->Form->input('trip_end_date');
		echo $this->Form->input('max_purchases');
		echo $this->Form->input('current_purchases');
		echo $this->Form->input('comission_percentage');
		echo $this->Form->input('deal_status_id');
		echo $this->Form->input('deal_type_id');
		echo $this->Form->input('private_note');
		echo $this->Form->input('destination_id');
		echo $this->Form->input('street_address');
		echo $this->Form->input('city_id');
		echo $this->Form->input('zip_code');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Deal.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Deal.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Deals', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Merchant Details', true), array('controller' => 'merchant_details', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Merchant Detail', true), array('controller' => 'merchant_details', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Statuses', true), array('controller' => 'deal_statuses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Status', true), array('controller' => 'deal_statuses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Deal Types', true), array('controller' => 'deal_types', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Deal Type', true), array('controller' => 'deal_types', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Destinations', true), array('controller' => 'destinations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Destination', true), array('controller' => 'destinations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
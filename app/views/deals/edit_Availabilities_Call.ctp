<?php //echo $html->script('prototype'); //Uncommenting this creates a js error.
	  //echo $html->script('scriptaculous');	  ?>



<div id="content">

<?php //debug($this->data); 
echo $this->Form->create('DealAvailability');
		

		echo $this->Form->input('id');
		//echo $this->Form->input('deal_id');
		//echo $this->Form->input('reservation_date');  //This should come out and be set in the controller.
		echo $this->Form->input('num_available');

	echo $ajax->submit('Update', array('url'=> array('controller'=>'deals', 'action'=>'editAvailabilitiesCall', $id, $date), 'update' => 'content'));
	echo $form->end(); ?>

</div>
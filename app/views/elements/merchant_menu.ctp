	<div class="blue_rounded_mod clearfix">
	<ul id="merchant_menu" class="deal_nav">
	<?php 
	switch($this->params['pass'][0]){
		case 'upcoming':
			echo '<li class="active">' . $this->Html->link('Upcoming Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '<span></span></li>';
			echo '<li>' . $this->Html->link('Live Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'live'),array( 'alt'=>'Live Deals')) . '</li>';
			echo '<li>' . $this->Html->link('Past Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'past'),array( 'alt'=>'Past Deals')) . '</li>';
			echo '<li class="last_action">' . $this->Html->link('Create New Deal >',array('controller'=>'merchants', 'action'=>'initiate'),array( 'alt'=>'Create Deal')) . '</li>';
		break;
		case 'live':
			echo '<li>' . $this->Html->link('Upcoming Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '</li>';
			echo '<li class="active">' . $this->Html->link('Live Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'live'),array( 'alt'=>'Live Deals')) . '<span></span></li>';
			echo '<li>' . $this->Html->link('Past Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'past'),array( 'alt'=>'Past Deals')) . '</li>';
			echo '<li class="last_action">' . $this->Html->link('Create New Deal >',array('controller'=>'merchants', 'action'=>'initiate'),array( 'alt'=>'Create Deal')) . '</li>';
		break;
		case 'past':
			echo '<li>' . $this->Html->link('Upcoming Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'upcoming'),array( 'alt'=>'Upcoming Deals')) . '</li>';
			echo '<li>' . $this->Html->link('Live Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'live'),array( 'alt'=>'Live Deals')) . '</li>';
			echo '<li class="active">' . $this->Html->link('Past Deals',array('controller'=>'merchants', 'action'=>'my_deals', 'past'),array( 'alt'=>'Past Deals')) . '<span></span></li>';
			echo '<li class="last_action">' . $this->Html->link('Create New Deal >',array('controller'=>'merchants', 'action'=>'initiate'),array( 'alt'=>'Create Deal')) . '</li>';
		break;
		
	}
	
	?>
	</ul>
	</div>
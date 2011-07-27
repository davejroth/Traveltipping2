<?php echo $this->Html->script('jquery');?>

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Reservations</h2>
	
	<?php echo $this->Html->image('/img/deals/deal-detail-2.png', array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		  echo $deal['Deal']['title'];  
		  echo "         " . "$" . $deal['Deal']['discounted_price'] . "<br/>";
		
		  echo "1. Select your check-in date";
		
	?>
	 

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>
<div>


</div><!-- #layout_right -->

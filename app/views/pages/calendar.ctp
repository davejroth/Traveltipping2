 
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Calendar</h2>

		<?php 
		
			//echo $this->Calendar->renderMonth(8,2011);
			
			//echo $this->Calendar->renderMonth(9,2011);
			
			echo $this->Calendar->dealCalendars(4);
		
		 ?>
 

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('start_traveling'); ?>

</div><!-- #layout_right -->

<?php echo $this->Html->script('jquery');
	  echo $this->Html->script('date');
	 ?>

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Reservations</h2>
	<?php echo $this->Form->create('Deal',  array('url' => '/deals/book/' . $deal['Deal']['id']));
		  echo $this->Html->image('/img/deals/deal-detail-2.png', array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		  echo $deal['Deal']['title'];  
		  echo "         " . "$" . $deal['Deal']['discounted_price'] . " per night" . "<br/>";
		
		  echo "1. Select your check-in date";

	
	echo $form->input('start_date',array('type'=>'select','options'=>$dates, 'id' => 'start_date')); 
	echo $form->input('end_date',array('type'=>'select','options'=>$dates, 'id' => 'end_date')); 
	?>
	 
   <script type="text/javascript"> 
   function days_between(date1, date2) {

    // The number of milliseconds in one day
    var ONE_DAY = 1000 * 60 * 60 * 24

    // Convert both dates to milliseconds
    var date1_ms = date1.getTime()
    var date2_ms = date2.getTime()

    // Calculate the difference in milliseconds
    var difference_ms = Math.abs(date1_ms - date2_ms)
    
    // Convert back to days and return
    return Math.round(difference_ms/ONE_DAY)

}
   	$(document).ready(function() {
		$("#start_date").change(function() {
			var formattedDate = Date.parse($(this).val());
			var dateString = formattedDate.toString("MMMM dd, yyyy");
						
			$("#display_start_date").html(formattedDate ? dateString : "");
		});
		$("#end_date").change(function() {
			var formattedDate = Date.parse( $(this).val());
			var dateString = formattedDate.toString("MMMM dd, yyyy");
			$("#display_end_date").html(formattedDate ? dateString : "");
			
			var endDate = Date.parse(document.getElementById('start_date').value);
			var nights = days_between(formattedDate, endDate);
			
			$("#nights").html(formattedDate ? nights : "");
			
			var costPerNight = <?php echo $deal['Deal']['discounted_price']; ?>;
			var totalCost = "$" + parseInt(costPerNight) * parseInt(nights);
			
			
			$("#total_cost").html(formattedDate ? totalCost : "");
		});
	});
	
    </script> 
<div id = "start_date_text">
Check-In Date:
<div id="display_start_date">
</div>
</div>

<div id = "end_date_text">
Check-Out Date:
<div id="display_end_date">
</div>
</div>

<div id = "nights_text">
Number of Nights:
<div id = "nights">

</div>
</div>
<div id = "cost_text">
Total
<div id = "total_cost">
</div>
</div>
<?php echo $this->Form->end('Continue')?>

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>

<div>


</div><!-- #layout_right -->

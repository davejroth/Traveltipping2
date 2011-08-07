<div id="layout_left" class="grid_22">

<?php
	echo $this->Form->input('Calendar.day',array(
	'type' => 'text',
	'label' => 'Date'
	));

?>

<div id="reservation_list"> 


</div> 

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('Manage_Reservations'); ?>



</div><!-- #layout_right -->

<script>
$(document).ready(function() {
	
	$('#CalendarDay').datepicker({ dateFormat: 'yy-mm-dd' });

	
	$('#CalendarDay').change(function(){
		var calendarDate = $('#CalendarDay').val();
		var dealID = <?php echo $dealID ?>;
		$("#reservation_list").empty();
		$.ajax({
			url:'\/merchants\/reservation_paginate\/'+ dealID + '\/' + calendarDate,
			success: function(html){
		    $("#reservation_list").append(html);
		  }
		});
	});
	
	/*
	
	*/

});
</script>

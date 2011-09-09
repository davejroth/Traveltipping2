<div id="layout_left" class="grid_22">
<?php
//debug($deal['Deal']['deal_valid']);
	//echo $deal['Deal']['deal_valid'];
	echo $deal['Deal']['title'] . "<br>";
	echo "Start Date:" . $deal['Deal']['deal_valid'] . "<br>";
	echo "End Date:" . $deal['Deal']['deal_expire'] . "<br>";
	echo $this->Calendar->dealCalendars($deal['Deal']['deal_valid'], $deal['Deal']['deal_expire']);

?>


</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php //echo $this->element('Manage_Reservations'); ?>



</div><!-- #layout_right -->

<div id="reservation_list_meta" class="clearfix container_30">
	<p>Click a date to update the maximum reservations</p>
	<a class="reservation_list_all" href="#"></a>	
</div>

<div id="reservation_list"> 


</div> 




<script>
$(document).ready(function() {
		
	var dealID = <?php echo $dealID ?>;
	
	$("#reservation_list").empty();
	/*$.ajax({
			url:'\/merchants\/reservation_paginate\/'+ dealID,
			success: function(html){
		    $("#reservation_list").append(html);
		  }
		}); 
	
	/**
	* Calendar Reservations 
	*/
	
	$('.calendar td[class!="blank"] a').click(function(){
		var calendarDates = $(this).parents('.month_wrap').attr('id').split('_');
		var calendarYear = calendarDates[1];
		var calendarMonth = pad(calendarDates[2],2);
		var calendarDay = pad($(this).text(),2);
		var resevationDate = calendarYear +'-'+ calendarMonth+'-'+calendarDay;
		
		var DateObj = convertDate(resevationDate);
		$('#reservation_list_meta p').text('Update Maximum Reservations for '+getDateText(DateObj));
		
		var dealID = <?php echo $dealID ?>;
		$("#reservation_list").empty();
		$.ajax({
			url:'\/deals\/editAvailabilitiesCall\/'+ dealID + '\/' + resevationDate,
			success: function(html){
		    $("#reservation_list").append(html);
		  }
		});
		return false;
	});
	/*
	$('.reservation_list_all').click(function() {
		var dealID = <?php echo $dealID ?>;
		$("#reservation_list").empty();
		$('#reservation_list_meta p').text('Showing All Reservations');
		$.ajax({
			url:'\/merchants\/reservation_paginate\/'+ dealID,
			success: function(html){
		    $("#reservation_list").append(html);
		  }
		});
		return false;
	});*/


});
</script>

<div id="layout_left" class="grid_22 merchant_reservations">
<?php
//debug($deal['Deal']['deal_valid']);
	//echo $deal['Deal']['deal_valid'];
	//debug($reservations_arr);
	echo $this->Calendar->dealCalendars($deal['Deal']['id']);

?>


</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('manage_reservations'); ?>



</div><!-- #layout_right -->

<div id="reservation_list_meta" class="clearfix container_30">
	<p>Showing All Reservations</p>
	<a class="reservation_list_all" href="#"></a>	
</div>

<div id="reservation_list"> 


</div> 




<script>
$(document).ready(function() {
	dealID = null;
	$.ajaxSetup({ cache: false });
	function getDateText(dateObj){
	var dateText = '';
	
	//dateObj.getMonth()
	var month=new Array(12);
	month[0]="Jan.";
	month[1]="Feb.";
	month[2]="Mar.";
	month[3]="Apr.";
	month[4]="May.";
	month[5]="Jun.";
	month[6]="Jul.";
	month[7]="Aug.";
	month[8]="Sep.";
	month[9]="Oct.";
	month[10]="Nov.";
	month[11]="Dec.";	
	dateText = month[dateObj.getMonth()]+' '+dateObj.getDate()+', '+dateObj.getFullYear();
	return dateText;
}
	
	//$('.calendar td[class!="blank"] a').unbind();
	
	$.ajax({
		url: window.location.pathname, 
		dataType: 'json',
		success: function(data) {
			dealID = data.dealID;
			//alert(data.num_of_reserved_dates);
			for(x = 0; x < (data.num_of_reserved_dates-1) ; x++ ){
				if(data.reservations[x].number != 0){
					$('#'+data.reservations[x].date+' a').append('<span class="reservations_bookings">'+data.reservations[x].number+'</span>')
				}
			}
			$("#reservation_list").empty();
			$.ajax({
				url:'\/merchants\/reservation_paginate\/'+ dealID,
				success: function(html){
		    $("#reservation_list").append(html);
		  	}
			});	
		}
	});
	
	

	/**
	* Calendar Reservations 
	*/
	
	$('.calendar td[class!="blank"] a').click(function(){

		var resevationDate = $(this).parent().attr('id')
		
		var DateObj = Date.parse(resevationDate);
		$('#reservation_list_meta p').text('Showing Reservations for '+getDateText(DateObj));		
		$.ajax({
			url:'\/merchants\/reservation_paginate\/'+ dealID + '\/' + resevationDate,
			success: function(html){
			$("#reservation_list").empty();
		    $("#reservation_list").append(html);
		  }
		});
		return false;
	});
	
	$('.reservation_list_all').click(function() {
		$("#reservation_list").empty();
		$('#reservation_list_meta p').text('Showing All Reservations');
		$.ajax({
			url:'\/merchants\/reservation_paginate\/'+ dealID,
			success: function(html){
		    $("#reservation_list").append(html);
		  }
		});
		return false;
	});
	
	


});
</script>

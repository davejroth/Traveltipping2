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

/**
* Pad numbers with a leading 0
*/
function pad(number, length) {
    var str = '' + number;
    if(str.length < length) {
        str = '0' + str;
    }
    return str;
}

/**
* Add days to a date
*/
function addDays(myDate,days) {
	return new Date(myDate.getTime() + (days+1)*24*60*60*1000);
}

/**
* Formatted date to date object
*/
function convertDate(myDate){
	myDateArr = myDate.split('-')
	var dateOjb = new Date(myDateArr[0], myDateArr[1] - 1, myDateArr[2]);
	return dateOjb;
}

function getDateText(dateObj){
	var dateText = '';
	
	dateObj.getMonth()
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

function addCheckoutDate(checkOutDate){
	var checkOutDateArr = new Array();
	checkOutDateArr = checkOutDate.split('-');
	calendar = 'calendar_'+checkOutDateArr[0]+'_'+checkOutDateArr[1];
	day = parseInt(checkOutDateArr[2],10);	
	$('#'+calendar+' a:contains(\''+day+'\'):first').parent().addClass('checkOutDate');
<<<<<<< HEAD
}
		
=======
}		
>>>>>>> Added helper functions to availabilitiesCall
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
		
		$.ajax({
			url:'\/deals\/editAvailabilitiesCall\/'+ dealID + '\/' + resevationDate,
			success: function(html){
			$("#reservation_list").empty();
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

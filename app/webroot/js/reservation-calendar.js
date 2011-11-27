$(document).ready(function() {

/**
* ++++++++++++++++++++++	CALENDAR FUNCTIONS ++++++++++++++++++++++++++++++++
*/

/**
* Add days to a date
*/
function addDays(myDate,days) {
	return new Date(myDate.getTime() + (days+1)*24*60*60*1000);
}
//Return check-in and checkout texts
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

/**
* Calculate days between 2 dates
*/
function days_between(date1, date2) {

    // The number of milliseconds in one day
    var ONE_DAY = 1000 * 60 * 60 * 24

    // Convert both dates to milliseconds
    var date1_ms = date1.getTime()
    var date2_ms = date2.getTime()

    // Calculate the difference in milliseconds
    var difference_ms = Math.abs(date1_ms - date2_ms)
    
    // Convert back to days and return
    return Math.floor(difference_ms/ONE_DAY)
}

/**
* Formatted date to date object
*/
function convertDate(myDate){
	myDateArr = myDate.split('-')
	var dateOjb = new Date(myDateArr[0], myDateArr[1] - 1, myDateArr[2]);
	return dateOjb;
}

/**
* Add Fixed Reservation to Calendar
* @params: dateID (Id of the checkin date being reserverd) 
*/
function addFixedReservation(dateID){
	checkInDateObj = convertDate(dateID)
	checkOutDateObj = convertDate(dateID)
	checkOutDateObj = checkOutDateObj.add({ days: max_nights});
	total = discounted_price * max_nights;
	checkInDate = checkInDateObj.toString("yyyy-MM-dd")
	checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
	$('#'+dateID).addClass('checkInDate');
	$('.check_in').text(getDateText(checkInDateObj));
	$('.check_out').text(getDateText(checkOutDateObj));
	$('.num_of_nights').text(max_nights);
	$('.summary_total_value').text('$'+total);
	$('input[name="data[DealPurchase][start_date]"]').val(checkInDate);
	$('input[name="data[DealPurchase][end_date]"]').val(checkOutDate);
	$('#'+checkOutDate).addClass('checkOutDate');
	
	for(x = 1; x < max_nights; x++ ){
		temp = null;
		temp = checkInDateObj;
		temp.add({ days: 1});
		daySelection = temp.toString("yyyy-MM-dd");
		$('#'+daySelection).addClass('dateSelection');
	}
}

/**
* Cancel Entire Reservation
*/
function cancelReservation(){
	$('.checkInDate').removeClass('checkInDate');
	$('.checkOutDate').removeClass('checkOutDate');
	$('.dateSelection').removeClass('dateSelection');
	$('.check_in').text('');
	$('.check_out').text('');
	$('.num_of_nights').text('');
	$('.summary_total_value').text('');
	$('input[name="data[DealPurchase][start_date]"]').val('');
	$('input[name="data[DealPurchase][end_date]"]').val('');
}

/**
* Add Variable Reservation to Calendar
* @params: dateID (Id of the checkin date being reserverd) 
*/
function addVariableReservation(dateID){
	checkInDateObj = convertDate(dateID)
	checkOutDateObj = convertDate(dateID)
	checkInDate = checkInDateObj.toString("yyyy-MM-dd")
	$('.check_in').text(getDateText(checkInDateObj));
	$('input[name="data[DealPurchase][start_date]"]').val(checkInDate);
	$('#'+dateID).addClass('checkInDate');
}

/**
* Update Variable Reservation to Calendar
* @params: dateID (Id of the checkin date being reserverd) 
*/
function updateVariableReservation(dateID){
	
	if($('.checkOutDate').length != 0){
		checkInDateObj = convertDate(dateID)
		checkOutDateObj = convertDate(dateID)
		checkInDate = checkInDateObj.toString("yyyy-MM-dd")
		checkOutDateObj = convertDate($('.checkOutDate').attr('id'))
		checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
		availability = checkRangeAvailability(checkInDate,checkOutDate);
		if(!availability){
			return false
		}
		
		numOfNights = days_between(checkInDateObj, checkOutDateObj)
		total = discounted_price * numOfNights;
		$('#'+dateID).addClass('checkInDate')
		$('.check_in').text(getDateText(checkInDateObj));
		$('input[name="data[DealPurchase][start_date]"]').val(checkInDate);
		$('.num_of_nights').text(numOfNights);
		$('.summary_total_value').text('$'+total);
		
		for(x = 1; x < numOfNights; x++ ){
			temp = null;
			temp = checkInDateObj;
			temp.add({ days: 1});
			daySelection = temp.toString("yyyy-MM-dd");
			$('#'+daySelection).addClass('dateSelection');
		}
	}
	else{
		
		if($('#'+dateID).hasClass('checkInDate')){
			removeVariableReservation(dateID);
			return false;
		}
		checkInDateObj = convertDate($('.checkInDate').attr('id'))
		checkOutDateObj = convertDate($('#'+dateID).attr('id'))
		
		availability = checkRangeAvailability($('.checkInDate').attr('id'),$('#'+dateID).attr('id'));
		if(!availability){
			return false
		}

		$('#'+dateID).addClass('checkOutDate');
		numOfNights = days_between(checkInDateObj, checkOutDateObj)
		//checkOutDateObj = checkOutDateObj.add({ days: max_nights});
		total = discounted_price * numOfNights;
		checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
		$('.check_out').text(getDateText(checkOutDateObj));
		$('.num_of_nights').text(numOfNights);
		$('.summary_total_value').text('$'+total);
		$('input[name="data[DealPurchase][end_date]"]').val(checkOutDate);
		
		for(x = 1; x < numOfNights; x++ ){
			temp = null;
			temp = checkInDateObj;
			temp.add({ days: 1});
			daySelection = temp.toString("yyyy-MM-dd");
			$('#'+daySelection).addClass('dateSelection');
		}
	}
}

/**
* Remove Variable Reservations
*/
function removeVariableReservation(dateID){
	//alert('remove');
	checkInClick = $('#'+dateID).hasClass('checkInDate');
	checkOutClick = $('#'+dateID).hasClass('checkOutDate');
	if(checkInClick){
		$('.checkInDate').removeClass('checkInDate');
		$('.dateSelection').removeClass('dateSelection');
		$('.check_in').text('');
		$('.num_of_nights').text('');
		$('.summary_total_value').text('');
		$('input[name="data[DealPurchase][start_date]"]').val('');
	}
	else if(checkOutClick){
		$('.checkOutDate').removeClass('checkOutDate');
		$('.dateSelection').removeClass('dateSelection');
		$('.check_out').text('');
		$('.num_of_nights').text('');
		$('.summary_total_value').text('');
		$('input[name="data[DealPurchase][end_date]"]').val('');
	}
}

function checkRangeAvailability(checkInID,checkOutID){
	var checkInDateObj = convertDate(checkInID);
	var checkOutDateObj = convertDate(checkOutID);
	var numOfNights = days_between(checkInDateObj, checkOutDateObj);
	//alert(numOfNights);
	
	for(x = 1; x < numOfNights; x++ ){
		var temp = null;
		temp = checkInDateObj;
		temp.add({ days: 1});
		var daySelection = temp.toString("yyyy-MM-dd");
		if($('#'+daySelection).hasClass('unavailable')){
			alert('Not a valid date, Please choose another date');
			return false;
		}
		else{
			return true;
		}
		//$('#'+daySelection).addClass('dateSelection');
	}	
}

/**
* Available dates Event Handler
*/
$('.calendar td[class="available"]').click(function(e){
	dateID = $(this).attr('id');
	if(reservation_type == 1){
		if($(this).hasClass('checkInDate')){
			cancelReservation();
		}
		else if($('.checkInDate').length == 0){
			addFixedReservation(dateID);
		}
	}
	if(reservation_type == 2){
		if($('.checkInDate').length == 1 && $('.checkOutDate').length == 1){
			removeVariableReservation(dateID);
		}
		else if($('.checkInDate').length != 0 || $('.checkOutDate').length != 0){
			updateVariableReservation(dateID);
		}
		else{
			addVariableReservation(dateID);
		}
	}
	return false;
});

/**
* Clear Reservations Calendar Event Handler
*/
$('.clear_dates').click(function(){
	cancelReservation()
	return false;	
});
	
/**
* Initialize Calendar States
*/
	num_of_months = $('.month_wrap').length;
	month_width = 330;
	slide_width = num_of_months * month_width;
	
	$('.month_wrap').eq(0).addClass('first_cal');
	$('.month_wrap').eq(1).addClass('second_cal');
	$('.month_wrap').eq(num_of_months - 1).addClass('last_cal');
		
	$('.prev_cal').hide();
	if(num_of_months == 2){
		$('.next_cal').hide();
	}
	
	$('.calendar_slider').css({
	'width': slide_width,
	'left' : 0
	});
	
/*
* Calendar Navigation Controls
*/
$('.prev_cal').click(function(){
	$(".calendar_slider").animate({
	  left: '+=330'
	}, 500, function(){
		position = $(".calendar_slider").position();
		css_position = $(".calendar_slider").css('left');
		last_slide = Math.floor(num_of_months - (Math.abs(position.left)/month_width));

		if(css_position == '0px'){
			$('.prev_cal').hide();
			$('.next_cal').show();
		}
		
		if(last_slide == 3){
			$('.next_cal').show();
		}
	});
	 return false;
});
	
$('.next_cal').click(function(){
	$(".calendar_slider").animate({
	  left: '-=330'
	  }, 500, function(){
	  	position = $(".calendar_slider").position();
	  	//alert(position.left)
	  	css_position = $(".calendar_slider").css('left');
	  	//alert(css_position);
	  	last_slide = Math.floor(num_of_months - (Math.abs(position.left)/month_width));
			if($(".calendar_slider").css('left') == position.left+'px'){
				$('.prev_cal').show();
			}
			else{
				$('.prev_cal').hide();
			}
			if(last_slide == 2){
				$('.next_cal').hide();
			}
		});
	 return false;
});
	
/**
* Calendar Hover
*/

$('.calendar td.available').hover(
  	function(){
  		$(this).addClass('calendarHover')
  	},
  	function(){
  		$(this).removeClass('calendarHover')
  	}
);

/**
* Calendar Date Click Events
*/

// Event handler for blank cells
$('.blank').click(function(){
	return false;	
});

// Prevent Clicks on non-available dates anchor tags from being captured by event handlers.
$('.calendar td[class!="available"] a').click(
function(){
	return false;
});


	
	
});





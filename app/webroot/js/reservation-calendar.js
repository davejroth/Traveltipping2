function monthDiff(d1, d2) {
    var months;
    months = (d2.getFullYear() - d1.getFullYear()) * 12;
    months -= d1.getMonth() + 1;
    months += d2.getMonth() + 1;
    return months;
}


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
	
	checkInDateObj = Date.parse(dateID)
	checkOutDateObj = Date.parse(dateID)
	checkOutDateObj = checkOutDateObj.add({ days: max_nights});
	expireRangeStartObj = Date.parse(deal_expire).add({ days: -max_nights});
	expireRangeEndObj = Date.parse(deal_expire);
	if(checkInDateObj.between(expireRangeStartObj, expireRangeEndObj)){
		
		$('#layout_center').prepend('<div class="error_notification notification"><p>Reservation falls within the expire date.  Choose another date.</p></div>')
			
			$('.notification').fadeOut(3000,'easeInCubic',function(){
				$('.notification').remove()
			});
			
		return false;
	}
	total = discounted_price;
	checkInDate = checkInDateObj.toString("yyyy-MM-dd")
	checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
	
	availability = checkRangeAvailability(checkInDate, checkOutDate);
	if(!availability){
		return false
	}
	
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
	
	if($('#'+dateID).attr('id') == deal_expire){
		$('#layout_center').prepend('<div class="error_notification notification"><p>Cannot check in on the last day of deal.  Choose another Date.</p></div>')
			$('.notification').fadeOut(3000,'easeInCubic',function(){
				$('.notification').remove()
			});
			return false;
	}
	
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
	if($('.checkInDate').length != 0){
		var checkOutDateObj2 = Date.parse(dateID);
		var checkInDateObj2 = Date.parse($('.checkInDate').attr('id'));
		if(checkInDateObj2.compareTo(checkOutDateObj2) == 1){
			
			$('#layout_center').prepend('<div class="error_notification notification"><p>Checkout date is before Checkin date.  Choose another Date.</p></div>')
			$('.notification').fadeOut(3000,'easeInCubic',function(){
				$('.notification').remove()
			});
			return false;
		}
	}
	if($('.checkOutDate').length != 0){
		if($('#'+dateID).hasClass('checkOutDate')){
			removeVariableReservation(dateID);
			return false;
		}
		checkInDateObj = Date.parse(dateID)
		checkInDate = checkInDateObj.toString("yyyy-MM-dd")
		checkOutDateObj = Date.parse($('.checkOutDate').attr('id'))
		checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
		if(checkOutDateObj.compareTo(checkInDateObj) == -1){
			
			$('#layout_center').prepend('<div class="error_notification notification"><p>Checkin date is after Checkout date.  Choose another Date.</p></div>')
			$('.notification').fadeOut(3000,'easeInCubic',function(){
				$('.notification').remove()
			});
			return false;
		}
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
	//alert(checkInID);
	//alert(checkOutID);
	var checkInDateObj = convertDate(checkInID);
	var checkOutDateObj = convertDate(checkOutID);
	var numOfNights = days_between(checkInDateObj, checkOutDateObj);
	
	for(x = 1; x < numOfNights; x++ ){
		var temp = null;
		temp = checkInDateObj;
		temp.add({ days: 1});
		var daySelection = temp.toString("yyyy-MM-dd");
		if($('#'+daySelection).hasClass('unavailable')){
			
			$('#layout_center').prepend('<div class="error_notification notification"><p>Not a valid date, Please choose another date</p></div>')
			$('.notification').fadeOut(3000,'easeInCubic',function(){
				$('.notification').remove()
			});
			return false;
		}
		//$('#'+daySelection).addClass('dateSelection');
	}
	return true;	
}

/**
* Available dates Event Handler
*/
$('.booking_calendar .calendar td[class="available"]').click(function(e){
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
start_position = 0;
$('.prev_cal').click(function(){
	$(".calendar_slider").animate({
	  left: '+=330'
	}, 500, function(){
		position = $(".calendar_slider").position();
		css_position = $(".calendar_slider").css('left');
		last_slide = Math.floor(num_of_months - (Math.abs(position.left)/month_width));

		if(css_position == start_position+'px'){
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

$('.merchant_reservations .calendar td.unavailable' ).hover(
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





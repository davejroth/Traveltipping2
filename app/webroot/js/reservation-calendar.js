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
* Formatted date to date object
*/
function convertDate(myDate){
	myDateArr = myDate.split('-')
	var dateOjb = new Date(myDateArr[0], myDateArr[1] - 1, myDateArr[2]);
	return dateOjb;
}

// Clear Dates
$('.clear_dates').click(function(){
	$('.checkInDate').nextUntil('.checkOutDate','td').removeClass('dateSelection');
	$('.checkoutDate').prevUntil('.checkInDate','td').removeClass('dateSelection');
	$('.checkOutDate').removeClass('checkOutDate');
	$('.checkInDate').removeClass('checkInDate');
	
	$('.check_in').text('');
	$('.check_out').text('');
	$('.num_of_nights').text('');
	$('.summary_total_value').text('');
	
	$('input[name="data[DealPurchase][start_date]"]').val('');
	$('input[name="data[DealPurchase][end_date]"]').val('');
	
	return false;	
});

// Fixed Reservation Event Handler

function addReservation(){
	if($('.checkInDate').length == 0){
	
		checkInDateObj = convertDate($(this).attr('id'))
		checkOutDateObj = convertDate($(this).attr('id'))
		$(this).addClass('checkInDate');
		//alert(window.location.pathname);
		$.ajaxSetup({ cache: false });
		$.ajax({
				url: window.location.pathname, 
				dataType: 'json',
				success: function(data) {
				//alert('json')
			//alert(data.Deal.max_nights);
			//checkOutDateObj = checkInDateObj.add({ days: data.Deal.max_nights}).toString("yyyy-MM-dd");
			checkOutDateObj = checkOutDateObj.add({ days: data.Deal.max_nights});
			total = data.Deal.discounted_price * data.Deal.max_nights;
			checkInDate = checkInDateObj.toString("yyyy-MM-dd")
			checkOutDate = checkOutDateObj.toString("yyyy-MM-dd")
			$('.check_in').text(getDateText(checkInDateObj));
			$('.check_out').text(getDateText(checkOutDateObj));
			$('.num_of_nights').text(data.Deal.max_nights);
			$('.summary_total_value').text('$'+total);
			$('input[name="data[DealPurchase][start_date]"]').val(checkInDate);
  		$('input[name="data[DealPurchase][end_date]"]').val(checkOutDate);
  		$('#'+checkOutDate).addClass('checkOutDate');
  		//alert(checkInDateObj);
  		for(x = 1; x < data.Deal.max_nights; x++ ){
  			temp = null;
  			temp = checkInDateObj;
  			temp.add({ days: 1});
  			daySelection = temp.toString("yyyy-MM-dd");
  			//alert(daySelection);
  			$('#'+daySelection).addClass('dateSelection');
  		}
  		$.ajaxSetup({ cache: true });
		}});
	}
	else{
		return false;
	}
}

function cancelReservation(){
	//alert('cancel');
	$(this).removeClass('checkInDate');
	$('.checkOutDate').removeClass('checkOutDate');
	$('.dateSelection').removeClass('dateSelection');
	$('.check_in').text('');
	$('.check_out').text('');
	$('.num_of_nights').text('');
	$('.summary_total_value').text('');
	$('input[name="data[DealPurchase][start_date]"]').val('');
  $('input[name="data[DealPurchase][end_date]"]').val('');
}

$('.calendar td[class="available"]').toggle(
	addReservation,
	cancelReservation
)
	
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





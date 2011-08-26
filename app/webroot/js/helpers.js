$(document).ready(function() {


	
});

/**
* Pad numbers with a leading 0
*/
function pad(number, length) {
    var str = '' + number;
    while (str.length < length) {
        str = '0' + str;
    }
    return str;
}


/**
* Add days to a date
*/
function addDays(myDate,days) {
	//alert(new Date(myDate.getTime() + days*24*60*60*1000));
    return new Date(myDate.getTime() + (days+1)*24*60*60*1000);
}

/**
* Formatted date to date object
*/
function convertDate(myDate){
	myDateArr = myDate.split('-')
	var dateOjb = new Date(myDateArr[0], myDateArr[1], myDateArr[2]);
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
	//alert(checkOutDate);
	calendar = 'calendar_'+checkOutDateArr[0]+'_'+checkOutDateArr[1];
	//alert(parseInt(checkOutDateArr[2],10));
	day = parseInt(checkOutDateArr[2],10);
	//alert(day);
	
	$('#'+calendar+' a:contains(\''+day+'\'):first').parent().addClass('checkOutDate');
	

}


function dateSelection(){
	  $('.calendar td[class!="blank"] a').toggle(
	  	function(){
	  		/**
	  		* Reservation Details
	  		*/
	  		var calendarDates = $(this).parents('.month_wrap').attr('id').split('_');
	  		var calendarYear = calendarDates[1];
	  		var calendarMonth = pad(calendarDates[2],2);
	  		var calendarDay = pad($(this).text(),2);
	  		var checkInDate = calendarYear +'-'+ calendarMonth+'-'+calendarDay;
	  		var myDate = new Date(checkInDate);
	  		var checkOutDateObj = addDays(myDate,<?php echo $deal['Deal']['max_nights'] ?>);
	  		var checkOutDateArr = new Array();
	  		checkOutDateArr[0] =  checkOutDateObj.getFullYear();
	  		checkOutDateArr[1] =  pad(checkOutDateObj.getMonth()+1,2);
	  		checkOutDateArr[2] =  pad(checkOutDateObj.getDate(),2);
	  		var checkOutDate = checkOutDateArr.join('-');
	  		var num_of_nights = days_between(convertDate(checkInDate),convertDate(checkOutDate));
	  		var price = <?php echo $deal['Deal']['discounted_price'] ?>;
	  		var total = num_of_nights * price;
	  		$('.check_in').text(checkInDate);
	  		$('.check_out').text(checkOutDate);
	  		$('.num_of_nights').text(num_of_nights);
	  		$('.summary_total_value').text('$'+total);
	  		
	  		/**
	  		* Calendar Selection
	  		*/
	  		
	  		$(this).parent().addClass('checkInDate');
	  		//alert(checkOutDate);
	  		addCheckoutDate(checkOutDate);
	  		
	  		//$(this).parent().addClass('checkOutDate');
	  		
	  			$(this).parent().nextUntil('.checkOutDate','td').addClass('dateSelection');
	  			$('.CheckoutDate a').parent().prevUntil('.checkInDate','td').addClass('dateSelection');
	  			

	  		
	  		//alert($(this).index());
	  		
	  		
	  		return false;
	  	},
	  	function(){
	  		$(this).parent().removeClass('checkInDate');
	  		$(this).parent().nextUntil('.checkOutDate','td').removeClass('dateSelection');
	  		$('.CheckoutDate').prevUntil('.checkInDate','td').removeClass('dateSelection');
	  		$('.checkOutDate').removeClass('checkOutDate');
	  		
	  		$('.check_in').text('');
	  		$('.check_out').text('');
	  		$('.num_of_nights').text('');
	  		$('.summary_total_value').text('');
	  	}
  	);	
}

<div id="layout_left" class="grid_22">
	<h2 class="page_title">Reservations Variable Page</h2>
	<?php 
		if(!empty($errors)) {
				echo $errors[array_rand($errors)] . '<br />'; //Both error messages are the same so this picks one.
		}
		echo '<div class="deal_summary clearfix">';
		echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		echo '<p class="grid_14 title">'.$deal['Deal']['title'].'</p>';  
		echo '<p class="grid_3 price"> $'.$deal['Deal']['discounted_price'].'<span class="span_block">per night</span>';
		echo '</div>';
		
		echo $this->Form->create('Deal', array(
		'url' => array('controller' => 'deals', 'action' => 'book',$deal['Deal']['id']),
		'class' => 'clearfix'
		));
		echo $this->Calendar->dealCalendars($deal['Deal']['id']);
		echo '<a class="clear_dates" href="#">'.$this->Html->image('/img/site/clear_dates.png').'</a>';
	?>
	<div class="reservation_info">
		<div><div class="date_legend"></div><p>Check In Date: <span class="check_in"></span></p></div>
		<div><div class="date_legend"></div><p>Check Out Date: <span class="check_out"></span></p></div>
		<p># of Nights: <span class="num_of_nights"></span></p>
	</div>
	<div class="summary_total">Total<span class="summary_total_value"></span></div>
 <input class="resDates" name="data[DealPurchase][start_date]" type="hidden" value="" />
<input class="resDates" name="data[DealPurchase][end_date]" type="hidden" value="" />

<?php echo $this->Form->end(array('class' => 'continue_btn'))?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
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
}
	
	$('.blank').click(function(){
		//$(this).css('cursor','auto');
		return false;	
	});
	
	var checkInDate = '';
	var checkOutDate = '';
	
  $('.calendar td[class!="blank"] a').toggle(
	  	function(){
	  		
	  		/**
	  		* Reservation Details
	  		*/
	  		var calendarDates = $(this).parents('.month_wrap').attr('id').split('_');
	  		//alert(calendarDates[1]);
	  		var calendarYear = calendarDates[1];
	  		
	  		var calendarMonth = pad(calendarDates[2],2);
	  		//alert('hello');
	  		var calendarDay = pad($(this).text(),2);
	  		

	  	if($('.checkInDate').length == 0){
	  			
	  		checkInDate = calendarYear +'-'+ calendarMonth+'-'+calendarDay;
	  		var checkInDateObj = convertDate(checkInDate);
	  		
	  		

	  		/**
	  		* Calendar Selection
	  		*/
	  		$(this).parent().addClass('checkInDate');
	  		
	  		$('.check_in').text(getDateText(checkInDateObj));
	  		$('input[name="data[DealPurchase][start_date]"]').val(checkInDate);
	  		
	  		
	  		if($('.checkOutDate').length == 1){
				var num_of_nights = days_between(convertDate(checkInDate),convertDate(checkOutDate));
				var price = <?php echo $deal['Deal']['discounted_price'] ?>;
				var total = num_of_nights * price;
				$('.num_of_nights').text(num_of_nights);
				$('.summary_total_value').text('$'+total);
	  		}
  			
  			
	  	}
	  	else if($('.checkInDate').length == 1 && $('.checkOutDate').length == 0){
	  		
	  		checkOutDate = calendarYear +'-'+ calendarMonth+'-'+calendarDay;
	  		var checkOutDateObj = convertDate(checkOutDate);

	  		/**
	  		* Calendar Selection
	  		*/
	  		$(this).parent().addClass('checkOutDate');
	  		
	  		
	  		$('.check_out').text(getDateText(checkOutDateObj));
	  		
	  		$('input[name="data[DealPurchase][end_date]"]').val(checkOutDate);
	  		
	  		var num_of_nights = days_between(convertDate(checkInDate),convertDate(checkOutDate));
	  		var price = <?php echo $deal['Deal']['discounted_price'] ?>;
	  		var total = num_of_nights * price;
	  		
	  			  		
	  		$('.num_of_nights').text(num_of_nights);
	  		$('.summary_total_value').text('$'+total);

	  	}

	  		return false;
	  	},
	  	function(){
	  		
	  		if($(this).parent().hasClass('checkInDate')){
	  			$('.check_in').text('');
	  			$('input[name="data[DealPurchase][start_date]"]').val('');
	  			$('.num_of_nights').text('');
	  			$('.summary_total_value').text('');
	  			$('.checkInDate').removeClass('checkInDate');
	  		}
	  		else if($(this).parent().hasClass('checkOutDate')){
	  			$('.check_out').text('');
	  			$('input[name="data[DealPurchase][end_date]"]').val('');
	  			$('.num_of_nights').text('');
	  			$('.summary_total_value').text('');
	  			$('.checkOutDate').removeClass('checkOutDate');
	  		}
	  		else{
	  			return false;	
	  		}
	  		
	  		//$(this).parent().removeClass('checkInDate');
	  		//$(this).parent().nextUntil('.checkOutDate','td').removeClass('dateSelection');
	  		//$('.CheckoutDate').prevUntil('.checkInDate','td').removeClass('dateSelection');
  			
	  	}
  	);	
  	
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
  	
});
</script>
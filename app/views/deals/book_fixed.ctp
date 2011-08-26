
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Reservations Fixed Page</h2>
	<?php 
		echo '<div class="deal_summary clearfix">';
		echo $this->Html->image($deal['Deal']['image1'], array('class'=>'grid_3','alt' => 'Featured Deal Image'));
		echo '<p class="grid_14 title">'.$deal['Deal']['title'].'</p>';  
		echo '<p class="grid_3 price"> $'.$deal['Deal']['discounted_price'].'<span class="span_block">per night</span>';
		echo '</div>';
		
		echo $this->Form->create('Deal', array(
		'url' => array('controller' => 'deals', 'action' => 'book',$deal['Deal']['id']),
		'class' => 'clearfix'
		));
		echo $this->Calendar->dealCalendars($deal['Deal']['deal_valid'], $deal['Deal']['deal_expire']);
		echo '<a class="clear_dates" href="#">'.$this->Html->image('/img/site/clear_dates.png').'</a>';
	?>
	<div class="reservation_info">
		<div><div class="date_legend"></div><p>Check In Date: <span class="check_in"></span></p></div>
		<div><div class="date_legend"></div><p>Check Out Date: <span class="check_out"></span></p></div>
		<p># of Nights: <span class="num_of_nights"></span></p>
	</div>
	<div class="summary_total">Total<span class="summary_total_value"></span></div>
	
<?php echo $this->Form->end(array('class' => 'continue_btn'))?>
</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
	
	<?php echo $this->element('book_reservation'); ?>
<div>


</div><!-- #layout_right -->
<script>
$(document).ready(function() {
	
	$('.blank').click(function(){
		//$(this).css('cursor','auto');
		return false;	
	});
	
	
  $('.calendar td[class!="blank"] a').toggle(
	  	function(){
	  		
	  		if($('.CheckInDate').length == 0){
	  		
	  		/**
	  		* Reservation Details
	  		*/
	  		var calendarDates = $(this).parents('.month_wrap').attr('id').split('_');
	  		var calendarYear = calendarDates[1];
	  		var calendarMonth = pad(calendarDates[2],2);
	  		var calendarDay = pad($(this).text(),2);
	  		var checkInDate = calendarYear +'-'+ calendarMonth+'-'+calendarDay;
	  		var checkInDateObj = convertDate(checkInDate);
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
	  		
	  		//checkInDateText = checkInDateObj.toString('MMMM ,yyyy')
	  		$('.check_in').text(getDateText(checkInDateObj));
	  		$('.check_out').text(getDateText(checkOutDateObj));
	  		$('.num_of_nights').text(num_of_nights);
	  		$('.summary_total_value').text('$'+total);
	  		
	  		/**
	  		* Calendar Selection
	  		*/
	  		$(this).parent().addClass('checkInDate');
	  		addCheckoutDate(checkOutDate);	
  			$(this).parent().nextUntil('.checkOutDate','td').addClass('dateSelection');
  			$('.CheckoutDate a').parent().prevUntil('.checkInDate','td').addClass('dateSelection');
  			
  			//$('.calendar td[class!="blank"] a').unbind(click);
  			
  			$('#DealBookForm').append('<input class="resDates" name="data[DealPurchase][start_date]" type="hidden" value="'+checkOutDate+'" />');
  			
  			$('#DealBookForm').append('<input class="resDates" name="data[DealPurchase][end_date]" type="hidden" value="'+checkInDate+'" />');
	  	}
	  		
	  		
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
	  		
	  		$('.resDates').detach();
  			
	  	}
  	);	
  	
});
</script>
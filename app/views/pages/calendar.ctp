 
<div id="layout_left" class="grid_22">
	<h2 class="page_title">Calendar</h2>

		<?php 
		
			//echo $this->Calendar->renderMonth(8,2011);
			
			//echo $this->Calendar->renderMonth(9,2011);
			
			echo $this->Calendar->dealCalendars('2011-07-12', '2011-07-14');
		
		 ?>
 

</div><!-- layout_left -->

<div id="layout_right" class="grid_8">
<?php echo $this->element('start_traveling'); ?>

</div><!-- #layout_right -->

<script>
$(document).ready(function() {
	
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
		  	css_position = $(".calendar_slider").css('left');
		  	last_slide = Math.floor(num_of_months - (Math.abs(position.left)/month_width));
		  	//alert(last_slide)
				if($(".calendar_slider").css('left') != position.left+'px'){
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
  
  $('.calendar td').hover(
	  	function(){
	  		$(this).css('background','#ffbe32')
	  	},
	  	function(){
	  		$(this).css('background','#E0F8F8')
	  	}
  	);
  	
   $('.calendar td.blank').hover(
	  	function(){
	  		$(this).css('background','#dddddd')
	  	}
  	);
  $('.calendar td a').click(
	  	function(){
	  		return false;
	  	}
  	);
	
	

});
</script>

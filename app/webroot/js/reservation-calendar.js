$(document).ready(function() {

/**
* Calendar functions
*/
	
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

// Prevent Clicks on non-available dates from bubbling up
$('.calendar td[class!="available"] a').click(
function(){
	return false;
});


	
	
});





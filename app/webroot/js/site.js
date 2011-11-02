$(document).ready(function() {
	
	
	/* Home Map Region Hover/Clicks */
	$('.region').each(function(e){
		$(this).hover(
			function(){
				var region = $(this).attr('id');
				
				$('#'+region).css('background-image','url(../img/site/region_selection_map_selected.png)');
				//alert(region);
			},
			function(){
				var region = $(this).attr('id');
				$('#'+region).css('background-image','url(../img/site/region_selection_map.png)');
		});
		
		$(this).toggle(
			function(){
				$('.checkbox').eq(e).css({backgroundPosition: "0 0"});
				var check_input = $('.checkbox_field').eq(e).parent().attr('id');
				//alert(check_input);
				$('#DealRegion'+(e+1)).val('1');
			},
			function(){
				$('.checkbox').eq(e).css({backgroundPosition: "0 -18px"});
				var check_input = $('.checkbox_field').eq(e).parent().attr('id');
				$('#DealRegion'+(e+1)).val('0');
			}
		);
		
	});
	/* Home Search Submit 
	$('.find_deals_btn').click(function(){
		$('#region_search').submit();
	});
	
	*/

	/**
	* Deal Listing Hover
	*/
	$('.deal_listing').each(function(index){
		$(this).hover(function(){
			//var x = e.data.index
				
				$('.deal_content').eq(index).addClass('highlight');
				//$('#deal_1 .highlight').css('-moz-border-raduis','5px');
				//alert(x)
			},
			function(){
				$('.deal_content').eq(index).removeClass('highlight');
				//alert(x)
			}
			);
	});
	
	/**
	* Featured Deal Hover
	*/
	$('#featured_deal').hover(
		function(){
		$('.deal_content').addClass('highlight');
			//$('#deal_1 .highlight').css('-moz-border-raduis','5px');
			//alert(x)
		},
		function(){
			$('.deal_content').removeClass('highlight');
			//alert(x)
		}
	);
	
	//$('#featured_deal').css('cursor','poitner');	
	$('.thumb_nails img').hover(
		function(){
		$(this).css('cursor','pointer')
			//$('#deal_1 .highlight').css('-moz-border-raduis','5px');
			//alert(x)
		}
	);

	
	$('.thumb_nails img').hover(
		function(){
		$(this).css('cursor','pointer')
			//$('#deal_1 .highlight').css('-moz-border-raduis','5px');
			//alert(x)
		}
	);
	
	
	
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
	/*
  $('.calendar td.outside_range').hover(
	  	function(){
	  		$(this).css('background','#E0F8F8')
	  	}
  	);
  	
   $('.calendar td.blank').hover(
	  	function(){
	  		$(this).css('background','#dddddd')
	  	}
  	);
  	*/
  	
	navLiWidth = $('.deal_nav li.active').innerWidth();
	pos = navLiWidth/2 - 5;
	$('.deal_nav li.active span').css('left', pos+'px')

	
	
	
});





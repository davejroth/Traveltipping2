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





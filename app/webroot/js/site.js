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

	
	
	
	
	
	
	
	
});
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
				$('#'+ check_input +' input[name="region_select[]"]').val('1');
			},
			function(){
				$('.checkbox').eq(e).css({backgroundPosition: "0 -18px"});
				var check_input = $('.checkbox_field').eq(e).parent().attr('id');
				$('#'+ check_input +' input[name="region_select[]"]').val('0');
			}
		);
		
	});
	/* Home Search Submit */
	$('.find_deals_btn').click(function(){
		$('#region_search').submit();
	});
	
	

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
	
	
	
	
	
});
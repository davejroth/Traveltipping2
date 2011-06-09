$(document).ready(function() {
	$('.checkbox').each(function(){
		$(this).toggle(
			function(){
				$(this).css({backgroundPosition: "0 0"});
				var check_input = $(this).parent().attr('id');
				$('input[name="'+ check_input +'"]').val('1');
			},
			function(){
				$(this).css({backgroundPosition: "0 -18px"});
				var check_input = $(this).parent().attr('id');
				$('input[name="'+ check_input +'"]').val('0');
			});
	});
	
	$('.find_deals_btn').click(function(){
		$('#region_search').submit();
	});
 });
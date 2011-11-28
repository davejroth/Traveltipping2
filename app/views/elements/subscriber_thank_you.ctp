<script type="text/javascript">
$(document).ready(function() {
	$('#overlay').click(function() {
		$('#travelers').fadeOut("normal");
		$("#overlay").fadeOut("normal");
	
	});
		
	$('#travelers').center();
	$(window).bind('resize', function() {
	    $('#travelers').center({transition:100});
	});
	
});
	


</script>
<p class="thank_you">Thank You!  We just sent you an email with more details.  Now all you have to do is tell your friends and keep an eye out for sample discounts as we get started in the next few months!</p>

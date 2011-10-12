<div id="content">

<?php //debug($this->data); 
echo $this->Form->create('DealAvailability', array('url' => '/deals/editAvailabilitiesCall/' .$id . '/' . $date ));
		echo "The current maximum is " . $this->data['DealAvailability']['num_available'];
		echo $this->Form->input('num_available');
	?> <a class="update_availabilities" href="#">Update</a> <?php
	echo $this->Form->end(); ?>

</div>

<script>
$(document).ready(function() {
	$('.update_availabilities').click(function() {
		var dealID = <?php echo $id ?>;
		var date = '<?php echo $date ?>';
		//alert(date);
		var formData = $(this).parents('form').serialize();
		var newCount = $("#DealAvailabilityNumAvailable").val();
		
		$.ajax({
			url:'\/deals\/editAvailabilitiesCall\/'+ dealID + "\/" + date + "\/" + newCount,
			data: formData,
			success: function(html){
			$("#content").empty();
		    $("#content").append(html);
		  }
		});
		return false;
	});
});
</script>

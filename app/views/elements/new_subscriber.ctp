<script type="text/javascript">
$(document).ready(function() {

		$('#subscribe_form_wrap').center();
		$(window).bind('resize', function() {
	    $('#subscribe_form_wrap').center({transition:100});
		});
		$(window).bind('scroll', function() {
	    $('#subscribe_form_wrap').center({transition:100});
		});
		$('#subscribe_form_wrap').fadeIn("normal");
		$("#overlay").fadeIn("normal").css('height',$('body').height()+20);
		
		$("#travelers_submit").bind("click", function(event){
			$.ajax({
				url:"\/users\/subscribe",
				data:$("#travelers_submit").closest("form").serialize(), 
				dataType:"html", 
				type: "post",
				success: function(data){
					$("#subscribe_form_wrap").html(data);
				}
			});
		return false;}); 

});
</script>
	<h3 class="subscriber_title">Get <span>outrageous</span> discounts on <br/>vacation villas, hotels and resorts</h3>

<?php echo $this->Html->image('/img/site/overlay_graphic.png',array('class'=>'overlay_img')); ?>


<?php 
echo '<div class="form_column">';
	echo $this->Form->create('Subscriber',array('class'=>'subscriber_form'));

	echo $this->Session->flash();	
	echo '<div class="field_row">';
	echo '<p class="subscriber_cta">Submit your email to<br/>enter our private travel site</p>';
	echo $this->Form->input('Subscriber.email',array('label'=>'Email Address'));
	echo '</div>';
	/*
	echo $this->Js->submit('Subscribe',
	array(
	'update'=>'#travelers',
	'id'=>'travelers_submit',
	'async'=>true,
	'url' => array('controller'=> 'users', 'action'=>'subscribe'), 
	'buffer'=>true));*/
	

	
	echo $this->Form->end(array('class'=>'enter_btn','id'=> 'travelers_submit'));
	
	
			echo '<ul class="subscribe_nav">';
		echo '<li>'.$this->Html->link('Privacy Policy', array('controller' => 'pages', 'action' => 'display','user-policies')).'</li>';
		echo '<li class="last_li">'.$this->Html->link('Log in', array('controller' => 'users', 'action' => 'login')).'</li>';
		
	echo '</ul>';
	echo '</div>';

	?>
		









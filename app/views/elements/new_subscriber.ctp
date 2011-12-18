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
	<h3 class="subscriber_title">Get <span>outrageous</span> discounts on <br/>Hotels, Resorts, Villas, Cruises and Tours</h3>
<?php echo $this->Form->create('Subscriber',array('class'=>'subscriber_form'));?>


<?php echo $this->Html->image('/img/site/overlay_graphic.png',array('class'=>'overlay_img')); ?>
<?php
	echo $this->Session->flash();	
	echo '<div class="field_row">';
	echo '<p class="subscriber_cta">Sign Up and never miss an opportunity to travel the world!</p>';
	echo $this->Form->input('Subscriber.email',array('label'=>'Enter Email Address'));

	/*
	echo $this->Js->submit('Subscribe',
	array(
	'update'=>'#travelers',
	'id'=>'travelers_submit',
	'async'=>true,
	'url' => array('controller'=> 'users', 'action'=>'subscribe'), 
	'buffer'=>true));*/
	
	echo $this->Form->end(array('class'=>'sign_up_btn','id'=> 'travelers_submit'));
	echo '</div>';
	echo '<ul class="subscribe_nav">';
		echo '<li>'.$this->Html->link('Privacy Policy', array('controller' => 'pages', 'action' => 'display','user-policies')).'</li>';
		echo '<li class="last_li">'.$this->Html->link('Log in', array('controller' => 'users', 'action' => 'login')).'</li>';
		
	echo '</ul>';
	?>
		









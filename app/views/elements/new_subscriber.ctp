<script type="text/javascript">
$(document).ready(function() {

		$('#travelers').center();
		$('#travelers').fadeIn("normal");
		$("#overlay").fadeIn("normal");
		
		$("#travelers_submit").bind("click", function (event) {$.ajax({async:true, data:$("#travelers_submit").closest("form").serialize(), dataType:"html", success:function (data, textStatus) {$("#travelers").html(data);}, type:"post", url:"\/users\/subscribe"});
		return false;}); 

});
</script>

<?php echo $this->Form->create('Subscriber',array('class'=>'travelers_form'));?>
<div class="form_box_top"></div>
<div class="form_box_content">
	<h3 class="travelers_title">Travelers</h3>
<p class="travelers_info">Get up to 75% off hotels, resorts, villas and lodges all over the world!</p>
<?php
	echo $this->Session->flash();	
	echo $this->Form->input('Subscriber.email',array('label'=>'Enter Email Address','before' => '<div class="label">', 'between' => '</div><div class="field">', 'after'=>'</div>'));

	echo $this->Html->link('Log in', array('controller' => 'users', 'action' => 'login'));
	echo $this->Js->submit('Subscribe',
	array(
	'update'=>'#travelers',
	'id'=>'travelers_submit',
	'async'=>true,
	'url' => array('controller'=> 'users', 'action'=>'subscribe'), 
	'buffer'=>true));?>
</div>

<?php echo $this->Form->end(); ?>





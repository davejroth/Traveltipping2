<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('TravelTipping'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		
		echo $this->Html->css('styles');
		echo $this->Html->css('/css/ui-lightness/jquery-ui');
		echo $this->Html->script('jquery');
		echo $this->Html->script('helpers');
		echo $this->Html->script('site');
		echo $this->Html->script('jquery-ui');
		echo $this->Html->script('jquery.center');
		//$this->AssetCompress->script('');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
</head>
<body>
<?php if(!$subscribed) { ?>
<script type="text/javascript">
$(document).ready(function() {

		$('#travelers').center();
		$('#travelers').fadeIn("normal");
		$("#overlay").fadeIn("normal");
		
		$("#travelers_submit").bind("click", function (event) {$.ajax({async:true, data:$("#travelers_submit").closest("form").serialize(), dataType:"html", success:function (data, textStatus) {$("#travelers").html(data);}, type:"post", url:"\/travelers\/subscribe"});
		return false;});

});
</script>
<?php }?>
	<div id="overlay"></div>
	<div id="layout_container">
	<div id="travelers" class="form_box">
<div class="form_box_top"></div>
<div class="form_box_content">
	<h3 class="travelers_title">Travelers</h3>
<p class="travelers_info">Get up to 75% off hotels, resorts, villas and lodges all over the world!</p>

<?php echo $this->Form->create('Subscriber',array('class'=>'travelers_form', 'url'=>array('controller' => 'travelers','action'=>'subscribe')));?>

<?php
	echo $this->Session->flash();	
	echo $this->Form->input('Subscriber.email',array('label'=>'Enter Email Address','before' => '<div class="label">', 'between' => '</div><div class="field">', 'after'=>'</div>'));
?>

<?php echo $this->Js->submit('Subscribe',
array(
'update'=>'#travelers',
'id'=>'travelers_submit',
'async'=>true,
//'complete' => $this->Js->get('form')->effect('fadeOut', array('buffer' => false)),
'url' => array('controller'=> 'travelers', 'action'=>'subscribe'), 
'buffer'=>true));?>

<?php echo $this->Form->end(); ?>
</div>
</div>
		<div id="layout_header">
			<?php echo $this->element('header'); ?>
			<div class="clouds"></div>
		</div><!-- #layout_header -->
		<div id="layout_main">
			<div id="layout_center" class="container_30 clearfix">
				<?php echo $this->Session->flash(); ?>
				<div id="layout_content">
					<?php echo $content_for_layout; ?>
				</div><!-- layout_content -->
			</div><!-- #layout_center -->
		</div><!-- #layout_main -->
		<div id="layout_footer">
			<?php echo $this->element('footer'); ?>
		</div><!-- #layout_footer -->	
	</div><!-- #layout_container -->
</body>
</html>
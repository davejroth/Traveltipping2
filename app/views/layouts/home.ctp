<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo 'TravelTipping - get real travel deals' ?>
	</title>
	<meta name="description" content="Travel the world at a fraction of the price with TravelTipping.  You'll find huge discounts on hotels, resorts, tours and cruises."/>
	
	<meta name="keywords" content="Traveltipping, travel tipping, travel deals, deals, deals for travel, traveltipping deals, travel tipping deals, travel deals in asia, real travel deals, cruise deals, tour deals, discount travel, discount travel deals, discount cruises, hotels, hotel, resort, lodge, villas, vacation package, discount vacation package, private discount site, private deals, private travel deals, destination deals"/>
	<?php
		echo $this->Html->meta('icon');
		
		echo $this->Html->css('styles');
		echo $this->Html->css('/css/ui-lightness/jquery-ui');
		echo $this->Html->script('jquery');
		echo $this->Html->script('helpers');
		echo $this->Html->script('site');
		echo $this->Html->script('date');
		echo $this->Html->script('jquery-ui');
		echo $this->Html->script('jquery.center');
		echo $this->Html->script('jquery.countdown');
		//$this->AssetCompress->script('');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
	
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-25056365-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


</head>
<body>
	<div id="overlay"></div>
	<div id="layout_container">
		<?php if(!$subscribed) { ?>
		<div id="subscribe_form_wrap" class="overlay_form_box">
			<?php echo $this->element('new_subscriber'); 		?>
			</div>
			<?php }?>
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
	
		<script type="text/javascript">
$(document).ready(function() {
		$('.notification').center();
	$('.notification').css('display','block')
$('.notification').fadeOut(3000,'easeInCubic',function(){
	$('.notification').remove()
});

});
</script>
</body>
</html>
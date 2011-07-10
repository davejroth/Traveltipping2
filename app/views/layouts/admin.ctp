<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $javascript->link('tiny_mce/tiny_mce.js'); ?>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('TravelTipping'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	
	<?php
		echo $this->Html->meta('icon');
		$this->AssetCompress->css(array(
			'admin',
			'uploadify'
		));
		
		echo $this->Html->css('styles');
		echo $this->Html->script('jquery');
		echo $this->Html->script('jquery-ui');
		//echo $this->Html->script('/uploadify/swfobject');
		//echo $this->Html->script('/uploadify/jquery.uploadify.v2.1.4');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
	<link href="/css/ui-lightness/jquery-ui.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<div id="layout_container">
		<div id="layout_header">
		
			<div class="clouds"></div>
		</div><!-- #layout_header -->
		<div id="layout_main">
			<div id="layout_center" class="container_30 clearfix">
				<?php echo $this->Session->flash(); ?>
				<?php echo $content_for_layout; ?>

				
			</div><!-- #layout_center -->
		</div><!-- #layout_main -->
		<div id="layout_footer">
			<?php echo $this->element('footer'); ?>
		</div><!-- #layout_footer -->	
	</div><!-- #layout_container -->
	

</body>
</html>
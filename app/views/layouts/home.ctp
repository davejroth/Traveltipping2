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
</body>
</html>
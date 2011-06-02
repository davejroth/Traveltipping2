<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php __('CakePHP: the rapid development php framework:'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		$this->AssetCompress->css(array(
			'reset',
			'layout',
			'default',
			'generic',
			'site',
			'helper'
		));
		$this->AssetCompress->script('jquery');
		echo $this->AssetCompress->includeAssets('false');
		echo $scripts_for_layout;
	?>
</head>
<body>
	<div id="layout_container">
		<div id="layout_header">
			<?php echo $this->element('header'); ?>
			<div class="clouds"></div>
		</div><!-- #layout_header -->
		<div id="layout_main">
			<div id="layout_center" class="container_30 clearfix">
				<?php echo $this->Session->flash(); ?>
				<div id="layout_left" class="grid_22">
					<?php echo $content_for_layout; ?>
				</div><!-- layout_left -->
				<div id="layout_right" class="grid_8">
					<?php echo $this->element('static_module'); ?>
				</div><!-- #layout_right -->
			</div><!-- #layout_center -->
		</div><!-- #layout_main -->
		<div id="layout_footer">
			<?php echo $this->element('footer'); ?>
		</div><!-- #layout_footer -->	
	</div><!-- #layout_container -->
</body>
</html>
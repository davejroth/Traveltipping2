
<div id="layout_left" class="grid_22">
	<?php echo $this->Form->create('Merchant', array('url' => '/merchants/approve/' . $deal['Deal']['id']));?>
	<h2 class="page_title">Approve Deal</h2>
	<div class="grid_10 prefix_1 suffix_1">
		<p class="sub_heading">Please approve your deal </p>
			<div class="legal_approval">
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut at urna augue. Vestibulum at eros eu nulla cursus luctus. Phasellus consectetur nisl sed sapien sodales pellentesque. Duis facilisis egestas odio sit amet malesuada. Aenean nunc diam, dictum in dignissim at, tristique nec ligula. Sed neque odio, iaculis non vehicula eget, dignissim sit amet mauris. Praesent rhoncus auctor lectus eu volutpat. Nulla arcu sem, feugiat a placerat at, pellentesque sit amet nisl. Etiam libero enim, rhoncus egestas lobortis et, lacinia quis mi. Mauris sodales faucibus nunc in mollis. Donec a leo turpis, et vulputate urna. Praesent tortor justo, varius a auctor in, consequat in leo. Cras tincidunt, magna vel imperdiet luctus, metus purus hendrerit quam, ut dignissim nunc sapien ut ipsum. Etiam lectus risus, aliquet id vulputate ac, feugiat et nibh. In justo ligula, fringilla at cursus non, dapibus sit amet est. Maecenas ac scelerisque ligula.

			<p>Mauris egestas laoreet ultrices. Nunc risus lacus, ultricies vitae congue eu, consequat id sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc pharetra adipiscing lectus, tincidunt tempor nibh ullamcorper vitae. Ut at neque ut felis pharetra rutrum. Nam ultrices tincidunt massa sed porta. Pellentesque a lectus in arcu eleifend posuere et non lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed nec posuere metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

			<p>Donec tempor blandit orci, sed dignissim nibh vehicula in. Sed semper justo id urna posuere fermentum. Vivamus ullamcorper pharetra suscipit. Vivamus imperdiet purus at nisi aliquet ultricies quis non quam. Vestibulum nisl lectus, ornare sit amet dapibus nec, mollis at mauris. Etiam fringilla quam sem, nec egestas nibh. Aliquam ac turpis nisl. Curabitur mi quam, eleifend ac aliquam ac, euismod ac dui. Duis ac tortor ac erat egestas posuere. Nullam tincidunt feugiat euismod. Nulla non nulla orci, in lacinia elit. Nam ac metus sit amet urna scelerisque vestibulum. Sed velit nisi, gravida eu ornare eu, ultricies quis massa.

			<p>Aliquam sit amet tellus ipsum. Suspendisse pulvinar mi accumsan est bibendum sed vulputate metus porttitor. Nullam turpis tortor, rutrum eget pulvinar eget, dapibus in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus sit amet metus dolor. Nullam consectetur fringilla egestas. Donec vehicula, odio semper tempor malesuada, ante ante tristique tellus, eu porta massa sapien suscipit lorem. Duis iaculis porttitor ante non blandit. Donec fermentum, massa sed laoreet pulvinar, nisi est laoreet nunc, non sollicitudin lacus risus aliquet neque.

			<p>Morbi tempus adipiscing tortor a dapibus. Morbi nulla dolor, accumsan et vestibulum at, aliquet malesuada leo. Praesent interdum odio et erat rhoncus consectetur. Phasellus a tempor lorem. Quisque ut lorem a massa faucibus tempor eget et libero. Suspendisse sodales sapien eget magna scelerisque sodales. Fusce ac ligula enim. Praesent nec mauris velit. In convallis elementum fermentum.
						
			</div>
			<?php 
			echo $this->Form->input('Merchant.tos', array('type'=>'checkbox','label' =>'I have read and agree to the Terms of Service'));
			echo $this->Form->input('Merchant.approval', array('type'=>'checkbox','label' =>'I approve TravelTipping to start advertising this deal'));
			//echo $this->Form->checkbox('tos'); echo "I have read and agree to the Terms of Service";
			//echo $this->Form->checkbox('approval'); echo "I approve TravelTipping to start advertising this deal";
			?>
			<div class='approve_btn'>
			
				<?php
				/*echo  $this->Html->link(
					'Approve',array('controller' => 'merchants', 'action' => 'approve', $deal['Deal']['id']), array()); */
					echo $this->Form->end('Approve');
				  ?>
			</div>
	</div>
</div><!-- layout_left -->

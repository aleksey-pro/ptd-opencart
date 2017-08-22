<?=$header; ?>
<section class="main-content">
	<div class="container">
		<div class="row">
			<?php $class = $column_left ? 'col-md-9' : 'col-md-12' ?>
			<?=$column_left?>
			<div class="<?= $class ?>">
				<div class="content">
					<ol class="breadcrumb">
					<?php foreach($breadcrumbs as $breadcrumb): ?>
						<li><a href="<?= $breadcrumb['href'] ?>"><?= $breadcrumb['text'] ?></a></li>
					<?php endforeach; ?>
					</ol>
					<?=$content_top?>
					<h1><?=$heading_title?></h1>
					<?php if ($thumb || $description): ?>
						<hr>
						<div class="row">							      
					        <?php if ($thumb): ?>
					        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
					        <?php endif; ?>
					        <?php if ($description): ?>
					        <div class="col-sm-10"><?php echo $description; ?></div>
					        <?php endif; ?>				        
				     	</div>
				     	<hr>
				    <?php endif; ?> 
		            <?php if ($products): ?>
		            	<div class="row">
					        <div class="col-sm-2  hidden-xs">
					          <div class="btn-group btn-group-sm">
					            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="glyphicon glyphicon-th-list"></i></button>
					            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="glyphicon glyphicon-th"></i></button>
					          </div>
					        </div>	
					        <div class="col-sm-6 col-xs-7">
					          <div class="form-group input-group input-group-sm">
					            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
					            <select id="input-sort" class="form-control" onchange="location = this.value;">
					              <?php foreach ($sorts as $sorts): ?>
					              <?php if ($sorts['value'] == $sort . '-' . $order): ?>
					              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
					              <?php else: ?>
					              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
					              <?php endif; ?>
					              <?php endforeach; ?>
					            </select>
					          </div>
					        </div>	
					        <div class="col-sm-4 col-xs-5 tedxt-right">
					          <div class="form-group input-group input-group-sm">
					            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
					            <select id="input-limit" class="form-control" onchange="location = this.value;">
					              <?php foreach ($limits as $limits): ?>
					              <?php if ($limits['value'] == $limit): ?>
					              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
					              <?php else: ?>
					              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
					              <?php endif; ?>
					              <?php endforeach; ?>
					            </select>
					          </div>
					        </div>	

							<div class="row">
								<?php foreach($products as $product):?>
									<div class="col-sm-4 product-grid">
										<div class="product">
											<div class="product-img">
												<a href="<?=$product['href']?>"><img src="<?=$product['thumb']?>" alt="<?=$product['name']?>"></a>
											</div><!-- /.product-img -->
											<p class="product-title">
												<a href="<?=$product['href']?>"><?=$product['name']?></a>
											</p>
											<p class="product-desc">
												<?=$product['description']?>
											</p>
											<div class="product-buy">
												<p class="product-price">
													Price:
													<?php if(!$product['special']):?>
														<?=$product['price']?>
													<?php else:?>
														<span class="price-new"><?=$product['special']?></span>
														<span class="price-old"><?=$product['price']?></span>
													<?php endif;?>
												</p>
												<button href="#" class="btn btn-default" onclick="cart.add('<?php echo $product['product_id']; ?>')" >add to cart</button>
											</div><!-- /.product-buy -->
										</div><!-- /.product -->
									</div>
								<?php endforeach; ?>
							</div>
							<hr>
							<div class="row">
								<div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
								<div class="col-sm-6 text-right results"><?php echo $results; ?></div>
							</div>

		            	</div>
		            <?php endif; ?>	
		            <?php if(!$products): ?>
		            	<p><?=$text_empty; ?></p>
		        	<?php endif; ?>
		        	<?=$content_bottom?>
				</div>
			</div>
		</div>
	</div>
</section>


<?=$footer; ?>
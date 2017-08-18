<div class="content">
	<h3><?=$heading_title?></h3>
	<?php foreach($products as $product):?>
		<div class="col-sm-4">
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
						<?=$product['price']?>
					</p>
					<button href="#" class="btn btn-default" onclick="cart.add('<?php echo $product['product_id']; ?>')" >add to cart</button>
				</div><!-- /.product-buy -->
			</div><!-- /.product -->
		</div>
	<?php endforeach; ?>
</div>
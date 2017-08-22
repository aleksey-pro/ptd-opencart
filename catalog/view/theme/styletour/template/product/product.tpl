<?=$header?>

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
					<div class="row">
						<div class="col-md-8">
						<?php if ($thumb || $images): ?>
							<ul class="thumbnails">
								<?php if ($thumb): ?>
								<li><a class="thumbnail" href="<?= $popup; ?>" title="<?= $heading_title; ?>"><img src="<?= $thumb; ?>" title="<?= $heading_title; ?>" alt="<?= $heading_title; ?>" /></a></li>
								<?php endif; ?>
								<?php if ($images): ?>
								<?php foreach ($images as $image): ?>
									<li class="image-additional"><a class="thumbnail" href="<?= $image['popup']; ?>" title="<?= $heading_title; ?>"> <img src="<?= $image['thumb']; ?>" title="<?= $heading_title; ?>" alt="<?= $heading_title; ?>" /></a></li>
								<?php endforeach; ?>
								<?php endif; ?>
							</ul>
						<?php endif; ?>

<div class="products-tab">
	<ul class="nav nav-tabs">
		<li class="active"><a href="#tab-description" data-toggle="tab"><?= $tab_description; ?></a></li>
	<?php if ($attribute_groups): ?>
		<li><a href="#tab-specification" data-toggle="tab"><?= $tab_attribute; ?></a></li>
	<?php endif; ?>
	<?php if ($review_status): ?>
		<li><a href="#tab-review" data-toggle="tab"><?= $tab_review; ?></a></li>
	<?php endif; ?>
	</ul>

	<div class="tab-content">
		<div class="tab-pane fade in active" id="tab-description"><?= $description; ?></div>
	<?php if ($attribute_groups): ?>
		<div class="tab-pane fade" id="tab-specification">
			<table class="table table-bordered">
			<?php foreach ($attribute_groups as $attribute_group): ?>
				<thead>
					<tr>
						<td colspan="2"><strong><?= $attribute_group['name']; ?></strong></td>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($attribute_group['attribute'] as $attribute): ?>
					<tr>
						<td><?= $attribute['name']; ?></td>
						<td><?= $attribute['text']; ?></td>
					</tr>
					<?php endforeach; ?>
				</tbody>
				<?php endforeach; ?>
			</table>
		</div>
	<?php endif; ?>
	<?php if ($review_status): ?>
		<div class="tab-pane fade" id="tab-review">
			<form class="form-horizontal" id="form-review">
				<div id="review"></div>
				<h2><?= $text_write; ?></h2>
				<?php if ($review_guest): ?>
				<div class="form-group required">
					<div class="col-sm-12">
						<label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
						<input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" class="form-control" />
					</div>
				</div>
				<div class="form-group required">
					<div class="col-sm-12">
						<label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
						<textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
						<div class="help-block"><?php echo $text_note; ?></div>
					</div>
				</div>
				<div class="form-group required">
					<div class="col-sm-12">
						<label class="control-label"><?php echo $entry_rating; ?></label>
						&nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
						<input type="radio" name="rating" value="1" />
						&nbsp;
						<input type="radio" name="rating" value="2" />
						&nbsp;
						<input type="radio" name="rating" value="3" />
						&nbsp;
						<input type="radio" name="rating" value="4" />
						&nbsp;
						<input type="radio" name="rating" value="5" />
						&nbsp;<?php echo $entry_good; ?></div>
					</div>
					<?php echo $captcha; ?>
					<div class="buttons clearfix">
						<div class="pull-right">
							<button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
						</div>
					</div>
					<?php else: ?>
						<?php echo $text_login; ?>
					<?php endif; ?>
				</form>
			</div>
	<?php endif; ?>
	</div>
</div>

						</div>
						<div class="col-md-4">
							<h1><?= $heading_title; ?></h1>
							<ul class="list-unstyled">
							<?php if ($manufacturer): ?>
								<li><?= $text_manufacturer; ?> <a href="<?= $manufacturers; ?>"><?= $manufacturer; ?></a></li>
							<?php endif; ?>
								<li><?= $text_model; ?> <?= $model; ?></li>
							<?php if ($reward): ?>
								<li><?= $text_reward; ?> <?= $reward; ?></li>
							<?php endif; ?>
								<li><?= $text_stock; ?> <?= $stock; ?></li>
							</ul>
							<p class="product-price">
								Price:
								<?php if(!$special): ?>
									<?=$price?>
								<?php else: ?>
									<span class="price-new"><?=$special?></span>
									<span class="price-old"><?=$price?></span>
								<?php endif; ?>
							</p>
							<div id="product">

<?php if ($options): ?>
	<hr>
	<h4><?= $text_option; ?></h4>
	<?php foreach ($options as $option): ?>
		<?php if ($option['type'] == 'select'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<select name="option[<?= $option['product_option_id']; ?>]" id="input-option<?= $option['product_option_id']; ?>" class="form-control">
					<option value=""><?= $text_select; ?></option>
					<?php foreach ($option['product_option_value'] as $option_value): ?>
					<option value="<?= $option_value['product_option_value_id']; ?>"><?= $option_value['name']; ?>
						<?php if ($option_value['price']): ?>
							(<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
						<?php endif; ?>
					</option>
					<?php endforeach; ?>
				</select>
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'radio'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label"><?= $option['name']; ?></label>
				<div id="input-option<?= $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value): ?>
						<div class="radio">
							<label>
								<input type="radio" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option_value['product_option_value_id']; ?>" />
								<?php if ($option_value['image']): ?>
									<img src="<?= $option_value['image']; ?>" alt="<?= $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
								<?php endif; ?>                    
								<?= $option_value['name']; ?>
								<?php if ($option_value['price']): ?>
									(<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
								<?php endif; ?>
							</label>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
		<?php endif; ?>
		
		<?php if ($option['type'] == 'checkbox'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label"><?= $option['name']; ?></label>
				<div id="input-option<?= $option['product_option_id']; ?>">
					<?php foreach ($option['product_option_value'] as $option_value): ?>
						<div class="checkbox">
							<label>
								<input type="checkbox" name="option[<?= $option['product_option_id']; ?>][]" value="<?= $option_value['product_option_value_id']; ?>" />
								<?php if ($option_value['image']): ?>
									<img src="<?= $option_value['image']; ?>" alt="<?= $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
								<?php endif; ?>
								<?= $option_value['name']; ?>
								<?php if ($option_value['price']): ?>
									(<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
								<?php endif; ?>
							</label>
						</div>
					<?php endforeach; ?>
				</div>
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'text'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" placeholder="<?= $option['name']; ?>" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'textarea'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<textarea name="option[<?= $option['product_option_id']; ?>]" rows="5" placeholder="<?= $option['name']; ?>" id="input-option<?= $option['product_option_id']; ?>" class="form-control"><?= $option['value']; ?></textarea>
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'file'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label"><?= $option['name']; ?></label>
				<button type="button" id="button-upload<?= $option['product_option_id']; ?>" data-loading-text="<?= $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?= $button_upload; ?></button>
				<input type="hidden" name="option[<?= $option['product_option_id']; ?>]" value="" id="input-option<?= $option['product_option_id']; ?>" />
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'date'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<div class="input-group date">
					<input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
					</span>
				</div>
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'datetime'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<div class="input-group datetime">
					<input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					</span>
				</div>
			</div>
		<?php endif; ?>

		<?php if ($option['type'] == 'time'): ?>
			<div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
				<label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
				<div class="input-group time">
					<input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="HH:mm" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					</span>
				</div>
			</div>
		<?php endif; ?>

	<?php endforeach; ?>
<?php endif; ?>

								<div class="form-group">
								<label class="control-label" for="input-quantity"><?= $entry_qty; ?></label>
									<input type="text" name="quantity" value="<?= $minimum; ?>" size="2" id="input-quantity" class="form-control" />
									<input type="hidden" name="product_id" value="<?= $product_id; ?>" />
									<br />
									<button type="button" id="button-cart" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?= $button_cart; ?></button>
								</div>
								<?php if ($minimum > 1): ?>
								<div class="alert alert-info"><i class="glyphicon glyphicon-info-sign"></i> <?= $text_minimum; ?></div>
								<?php endif; ?>
							</div>
						</div>
					</div>
					<?=$content_bottom?>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	$(function(){
		$('.thumbnails').magnificPopup({
			type:'image',
			delegate: 'a',
			gallery: {
				enabled:true
			}
		});

		$('#review').delegate('.pagination a', 'click', function(e) {
			e.preventDefault();

			$('#review').fadeOut('slow');

			$('#review').load(this.href);

			$('#review').fadeIn('slow');
		});

		$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

		$('#button-review').on('click', function() {
			$.ajax({
				url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
				type: 'post',
				dataType: 'json',
				data: $("#form-review").serialize(),
				beforeSend: function() {
					$('#button-review').button('loading');
				},
				complete: function() {
					$('#button-review').button('reset');
				},
				success: function(json) {
					$('.alert-success, .alert-danger').remove();

					if (json['error']) {
						$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
					}

					if (json['success']) {
						$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

						$('input[name=\'name\']').val('');
						$('textarea[name=\'text\']').val('');
						$('input[name=\'rating\']:checked').prop('checked', false);
					}
				}
			});
			// grecaptcha.reset();
		});

		$('#button-cart').on('click', function() {
			$.ajax({
				url: 'index.php?route=checkout/cart/add',
				type: 'post',
				data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
				dataType: 'json',
				beforeSend: function() {
					$('#button-cart').button('loading');
				},
				complete: function() {
					$('#button-cart').button('reset');
				},
				success: function(json) {
					$('.alert, .text-danger').remove();
					$('.form-group').removeClass('has-error');

					if (json['error']) {
						if (json['error']['option']) {
							for (i in json['error']['option']) {
								var element = $('#input-option' + i.replace('_', '-'));

								if (element.parent().hasClass('input-group')) {
									element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
								} else {
									element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
								}
							}
						}

						if (json['error']['recurring']) {
							$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
						}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				// $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				// $('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#btn-cart span.cart-info').html(json['total']);
				$('#cart .modal-body').load('index.php?route=common/cart/info .modal-body');
				$('#cart').modal();

				// $('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
		});

	});
</script>

<?=$footer?>
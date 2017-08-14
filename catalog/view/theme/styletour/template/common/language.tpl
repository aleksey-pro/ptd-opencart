<?php if(count($languages) > 1): ?>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<?php foreach($languages as $language): ?>
				<?php if($language['code'] == $code): ?>
					<span class="flag"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>"></span><?php echo $text_language; ?><span class="caret"></span>
				<?php endif; ?>	
			<?php endforeach; ?>
		</a>	
		<ul class="dropdown-menu">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
				<?php foreach($languages as $language): ?>
					<li>
						<button class="btn btn-link btn-block language-select" type="button" name="<?php echo $language['code']; ?>">
							<img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?>
						</button>
					</li>
				<?php endforeach; ?>	
				<input type="hidden" name="code" value="" />
	  			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			</form>
		</ul>
	</li>
<?php endif; ?>
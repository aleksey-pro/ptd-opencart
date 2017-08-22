<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<base href="<?=$base?>">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?=$title?></title>
	<meta name="description" content="<?=$description?>">
	<meta name="keywords" content="<?=$keywords?>">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,400,300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
	<link href="catalog/view/theme/styletour/css/bootstrap.min.css" rel="stylesheet">
	<link href="catalog/view/theme/styletour/css/style.css" rel="stylesheet">
	<script src="catalog/view/theme/styletour/js/modernizr.custom.17475.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="catalog/view/theme/styletour/js/bootstrap.min.js"></script>
	<script src="catalog/view/theme/styletour/js/common.js"></script>
	<script src="catalog/view/theme/styletour/js/scripts.js"></script>
	<?php foreach($links as $link): ?>
		<link href="<?=$link['href']?>" rel="<?=$link['rel']?>">
	<?php endforeach; ?>
	<?php foreach($styles as $style): ?>
		<link href="<?=$style['href']?>" rel="<?=$style['rel']?>" type="text/css" media="<?=$style['media']?>">
	<?php endforeach; ?>
	<?php foreach($scripts as $script): ?>
		<script src="<?=$script?>"></script>
	<?php endforeach; ?>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="<?=$class?>">
	
	<header>
		<div class="menu-top">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu-top" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="menu-top">
						<ul class="nav navbar-nav">
							<li><a href="#">Support</a></li>
							<li><a href="#">Free Shipping Over $50</a></li>
							<li><a href="#">Articles</a></li>
							<?=$language?>
							<?=$currency?>
						</ul>

						<ul class="nav navbar-nav navbar-right">
						<?php if($logged): ?>
							<li class="dropdown">
								<a href="<?=$account?>" class="dropdown-toggle" data-toggle="dropdown"><?=$text_account?> <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
						            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
						            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
						            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
						            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
								</ul>
							</li>
						<?php else: ?>
							<li><a href="<?=$login?>"><?=$text_login?></a></li>
							<li><a href="<?=$register?>"><?=$text_register?></a></li>
						<?php endif; ?>
							<?=$cart?>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div><!-- /.menu-top -->
		<div class="main-menu-wrap">
			<div class="main-menu">
				<nav class="navbar navbar-inverse">
					<div class="container">
						<div class="main-menu-bg">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-menu" aria-expanded="false">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<a class="navbar-brand" href="<?=$home?>">
								<?php if($home == $og_url): ?>
									<img src="<?=$logo?>" alt="<?=$name?>">
								<?php endif; ?>
									<span class="<?=$class?>"><?=$name?></span>
								</a>
							</div>

							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="main-menu">
<ul class="nav navbar-nav">
<?php foreach($categories as $category): ?>
	<?php if($category['children']): ?>
		<li class="dropdown">
			<a href="<?=$category['href']?>" class="dropdown-toggle" data-toggle="dropdown"><?=$category['name']?> <span class="caret"></span></a>
			<ul class="dropdown-menu">
				<?php foreach($category['children'] as $child): ?>
					<li><a href="<?=$child['href']?>"><?=$child['name']?></a></li>
				<?php endforeach; ?>
				<li role="separator" class="divider"></li>
				<li><a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></li>
			</ul>
		</li>
	<?php else: ?>
		<li><a href="<?=$category['href']?>"><?=$category['name']?></a></li>
	<?php endif; ?>
<?php endforeach; ?>
</ul>

								<div class="nav navbar-nav navbar-right">
									<form class="navbar-form navbar-left" role="search" method="get" action="">
										<div class="input-group">
											<input type="text" class="form-control" placeholder="Search">
											<span class="input-group-btn">
												<button type="submit" class="btn btn-default" name="go"><i class="glyphicon glyphicon-search"></i></button>
											</span>
										</div>
									</form>
								</div>
							</div><!-- /.navbar-collapse -->
							<i class="search glyphicon glyphicon-search"></i>
						</div><!-- /.main-menu-bg -->
					</div><!-- /.container -->
				</nav>
			</div><!-- /.main-menu -->
		</div><!-- /.main-menu-wrap -->
	</header>
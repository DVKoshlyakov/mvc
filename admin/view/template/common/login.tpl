<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
	<meta charset="UTF-8" />
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

	<link rel="stylesheet" type="text/css"  href="/admin/view/stylesheet/stylesheet.css">
	<link rel="stylesheet" type="text/css"  href="/admin/view/stylesheet/theme.css">
	<link rel="stylesheet" type="text/css"  href="/admin/view/stylesheet/font-awesome/font-awesome.css">

	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>

	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="/admin/view/javascript/bootstrap-daterangepicker/daterangepicker-bs3.css" />

	<!-- UNIFORM -->
	<link rel="stylesheet" type="text/css" href="/admin/view/javascript/uniform/uniform.css" />
</head>
<body class="login">
	<!-- PAGE -->
	<section>
			<!-- HEADER -->
			<header>
				<!-- NAV-BAR -->
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div id="logo">
								<a href="/admin/"><img src="/admin/view/image/logo/logo-alt.png" height="40" alt="logo name" /></a>
							</div>
						</div>
					</div>
				</div>
				<!--/NAV-BAR -->
			</header>
			<!--/HEADER -->
			<!-- LOGIN -->
			<section class="visible">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<?php if(!empty($error_warning)) { ?>
									<div class="alert alert-block alert-danger fade in">
										<a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
										<h5><i class="fa fa-times"></i> Ошибка!</h5>
										<p><?php echo $error_warning;?></p>
									</div>
								<?php } ?>
								<h2 class="bigintro"><?php echo $heading_title;?></h2>
								<div class="divide-40"></div>
								<form role="form" action="<?php echo $action;?>" method="post">
								  <div class="form-group">
									<label for="exampleInputLogin"><?php echo $entry_username;?></label>
									<i class="fa fa-user"></i>
									<input type="text" class="form-control" id="exampleInputLogin" name="username">
								  </div>
								  <div class="form-group">
									<label for="exampleInputPassword"><?php echo $entry_password;?></label>
									<i class="fa fa-lock"></i>
									<input type="password" class="form-control" id="exampleInputPassword" name="password">
								  </div>
								  <div class="form-actions">
									<button type="submit" class="btn btn-danger"><?php echo $button_login;?></button>
								  </div>
								</form>
								<div class="login-helpers">
									<a href="<?php echo $forgotten;?>"><?php echo $text_forgotten;?></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/LOGIN -->
	</section>
	<!--/PAGE -->
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#'+id).addClass('visible animated fadeInUp');
		}
	</script>
	<!-- /JAVASCRIPTS -->
<?php echo $footer; ?>
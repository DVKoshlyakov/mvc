<?php echo $header; ?>
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
										<h4><i class="fa fa-times"></i> Ошибка!</h4>
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
	<script>
		jQuery(document).ready(function() {
			App.setPage("login");  //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#'+id).addClass('visible animated fadeInUp');
		}
	</script>
	<!-- /JAVASCRIPTS -->
<?php echo $footer; ?>
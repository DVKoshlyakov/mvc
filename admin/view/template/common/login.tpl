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
								<a href="index.html"><img src="/admin/view/image/logo/logo-alt.png" height="40" alt="logo name" /></a>
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
								<h2 class="bigintro">Sign In</h2>
								<div class="divide-40"></div>
								<form role="form">
								  <div class="form-group">
									<label for="exampleInputEmail1">Email address</label>
									<i class="fa fa-envelope"></i>
									<input type="email" class="form-control" id="exampleInputEmail1" >
								  </div>
								  <div class="form-group">
									<label for="exampleInputPassword1">Password</label>
									<i class="fa fa-lock"></i>
									<input type="password" class="form-control" id="exampleInputPassword1" >
								  </div>
								  <div class="form-actions">
									<label class="checkbox"> <input type="checkbox" value=""> Remember me</label>
									<button type="submit" class="btn btn-danger">Submit</button>
								  </div>
								</form>
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('forgot');return false;">Forgot Password?</a> <br>
									Don't have an account with us? <a href="#" onclick="swapScreen('register');return false;">Register now!</a>
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
<?php echo $header; ?>

	<!-- PAGE -->
	<section id="page">
		<!-- SIDEBAR -->
			<?php echo $column_left;?>
		<!-- /SIDEBAR -->
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<!-- BREADCRUMBS -->
									<ul class="breadcrumb">
										<?php foreach ($breadcrumbs as $key=>$breadcrumb) { ?>
											<li>
												<?php if($key==0) { echo '<i class="fa fa-home"></i>';} ?>
												<?php if(isset($breadcrumb['href'])) { ?>
													<a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
												<?php } else { ?>
													<?php echo $breadcrumb['text']; ?>
												<?php } ?>
											</li>
										<?php } ?>
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left"><?php echo $heading_title;?></h3>
									</div>
									<div class="description">Overview, Statistics and more</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<!-- DASHBOARD CONTENT -->
						<div class="row"></div>
					   <!-- /DASHBOARD CONTENT -->
					   <!-- HERO GRAPH -->
						<div class="row"></div>
						<!-- /HERO GRAPH -->
						<!-- NEW ORDERS & STATISTICS -->
						<div class="row"></div>
						<!-- /NEW ORDERS & STATISTICS -->
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	</section>
	<!--/PAGE -->
	<!-- JAVASCRIPTS -->

	<!-- /JAVASCRIPTS -->
	<?php echo $footer; ?>
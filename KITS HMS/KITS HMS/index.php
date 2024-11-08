<?php
include("header.php");
?>
	<!-- banner -->
	<div class="banner-w3pvt">
	<?php include("slider.php"); ?>
	</div>
	<!-- //banner -->
	
		<!-- events -->
	<div class="about-w3sec" id="event">
		<div class="container py-xl-5">
			<div class="title text-center mb-sm-5 mb-4"><h4 class="title-w3 text-bl text-center font-weight-bold"> KAMALA INSTITUTE OF TECHNOLOGY AND SCIENCE
				
			</h4>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>
			<div class="evnt-grid p-sm-5 p-4">
				<div class="row">
					<div class="col-lg-12 col-sm-3 text-center mt-2">
<p><b>Drive by its commitment to provide quality technical education, KAMALA INSTITUTE OF TECHNOLOGY AND SCIENCE has become the best Engineering institution in Telangana.</b></p>
<p><b>The campus is spread across an extensive, green, mango grove of 26.25 acres, which makes it apollution free zone. The campus presents a conducive, healthy learning environment for the pursuit of technical education.</b></p>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //events -->
<?php
if(!isset($_SESSION['hostellerid']))
{
	if(!isset($_SESSION['guestid']))
	{
		if(!isset($_SESSION['emp_id']))
		{
		?>
	<!-- news -->
	<section class="blog_w3ls " id="news">
		<div class="container py-xl-5 py-lg-3"><hr>
			<div class="title text-center mb-sm-5 mb-4">
				<h4 class="title-w3 text-bl text-center font-weight-bold"> ACCOUNT PANEL</h4>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>

					<div class="row pt-4">

						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="hostellerlogin.php">
										<img class="card-img-bottom" src="slider/hostel5.jpeg" alt="Card image cap">
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="hostellerlogin.php">Hosteller - Login</a>
										</h5>
									</div>
									<a href="hostellerlogin.php" class="blog-btn">Click here to Login</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-md-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="hosteller.php">
										<img class="card-img-bottom" src="slider/hostel.jpg" alt="Card image cap">
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="hosteller.php">Hosteller - Register</a>
										</h5>
									</div>
									<a href="hosteller.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="guestlogin.php">
										<img class="card-img-bottom" src="images/h3.jpeg" alt="Card image cap">
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="guestlogin.php">Guest - Login</a>
										</h5>
									</div>
									<a href="guestlogin.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
						<!-- blog grid -->
						<div class="col-lg-3 col-md-3 mt-lg-0 mt-5">
							<div class="card border-0 med-blog">
								<div class="card-header p-0">
									<a href="guest.php">
										<img class="card-img-bottom" src="images/h4.jpeg" alt="Card image cap">
									</a>
								</div>
								<div class="card-body border border-top-0 pb-5">
									<div class="mb-3">
										<h5 class="blog-title card-title font-weight-bold m-0">
											<a href="guest.php">Guest - Register</a>
										</h5>
									</div>
									<a href="guest.php" class="blog-btn">Click here to Register</a>
								</div>
							</div>
						</div>
						<!-- //blog grid -->
					</div>
		
		</div>
	</section>
	<!-- //blog -->
		<?php
		}
	}
}
?>	
<?php
include("footer.php");
?>
<?php
include("header.php");
?>
	</div>
	<!-- //banner -->
	<!-- page details -->
	<div class="breadcrumb-agile">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item">
				<a href="index.php">Home</a>
			</li>
			<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
		</ol>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<section class="contact-wthree py-5" id="contact">
		<div class="container py-xl-5 py-lg-3">
			<div class="title text-center mb-sm-5 mb-4">
				<h3 class="title-w3 text-bl text-center font-weight-bold">Contact Us</h3>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-7">
					<div class="contact-form-wthreelayouts">
						<form action="#" method="post" class="register-wthree">
							<div class="form-group">
								<label>
									Your Name
								</label>
								<input class="form-control" type="text" placeholder="Enter Your Name" name="name" required="">
							</div>
							<div class="form-group">
								<label>
									Mobile
								</label>
								<input class="form-control" type="text" placeholder="Enter mobile No." name="mobile" required="">
							</div>
							<div class="form-group">
								<label>
									Email
								</label>
								<input class="form-control" type="email" placeholder="Enter Email ID" name="email" required="">
							</div>
							<div class="form-group">
								<label>
									Your message
								</label>
								<textarea placeholder="Type your message here" name="message" class="form-control"></textarea>
							</div>
							<div class="form-group mt-4 mb-0">
								<button type="submit" class="btn btn-w3layouts w-100">Send</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-5 text-center mt-lg-0 mt-5">
					<div class="row flex-column">
						<div class="contact-w3">
							<span class="fa fa-envelope-open  mb-3"></span>
							<div class="d-flex flex-column">
								<a href="mailto:example@email.com" class="d-block">projectoffice@kitssingapuram.ac.in</a>
							</div>
						</div>
						<div class="contact-w3 my-4">
							<span class="fa fa-phone mb-3"></span>
							<div class="d-flex flex-column">
								<p>8328652726</p>
								
							</div>
						</div>
						<div class="contact-w3">
							<span class="fa fa-home mb-3"></span>
							<address>Singapuram,<br>Huzrabad,<br>Karimnagar Road,<br>Karimnagar-505001</address>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- //contact -->
	<!-- map -->
	<div class="map p-2">
	<iframe src="" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<!-- //map -->

	<?php
	include("footer.php");
	?>
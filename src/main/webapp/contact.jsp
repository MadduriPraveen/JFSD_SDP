<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


<meta charset="utf-8" />
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" " />
<meta name="keywords" content="" />
<meta content="Themesdesign" name="author" />

<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Bootstrap Css -->
<link href="assets/css/bootstrap.min.css" id="bootstrap-style"
	rel="stylesheet" />
<!-- Icons Css -->
<link href="assets/css/icons.min.css" rel="stylesheet" />
<!-- App Css-->
<link href="assets/css/app.min.css" id="app-style" rel="stylesheet" />
<!--Custom Css-->



</head>

<body>


	<!--start page Loader -->
	<div id="preloader">
		<div id="status">
			<ul>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>
	<!--end page Loader -->
	<%@ include file="navbar.jsp"%>

	<!-- Begin page -->
	<div>



		<div class="main-content">

			<div class="page-content">

				<!-- Start home -->
				<section class="page-title-box">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-6">
								<div class="text-center text-white">
									<h3 class="mb-4">Contact</h3>
								</div>
							</div>
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<!-- end home -->

				<!-- START SHAPE -->
				<div class="position-relative" style="z-index: 1">
					<div class="shape">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 250">
                                <path fill="" fill-opacity="1"
								d="M0,192L120,202.7C240,213,480,235,720,234.7C960,235,1200,213,1320,202.7L1440,192L1440,320L1320,320C1200,320,960,320,720,320C480,320,240,320,120,320L0,320Z"></path>
                            </svg>
					</div>
				</div>
				<!-- END SHAPE -->


				<!-- START CONTACT-PAGE -->
				<section class="section">
					<div class="container">
						<div class="row align-items-center mt-5">
							<div class="col-lg-6">
								<div class="section-title mt-4 mt-lg-0">
									<h3 class="title">Get in touch</h3>
									<p class="text-muted">Start working with KLP that can
										provide everything you need to generate awareness, drive
										traffic, connect.</p>
									<form action="sendEmail" method="post">
										<span id="error-msg"></span>
										<div class="row">
											<div class="col-lg-12">
												<div class="mb-3">
													<label for="nameInput" class="form-label">Name</label> <input
														type="text" name="fromName" id="name"
														class="form-control is-required"
														placeholder="Enter your name" required>
												</div>
											</div>
											<div class="col-md-6">
												<div class="mb-3">
													<label for="emailInput" class="form-label">Email</label> <input
														type="email" class="form-control is-required" id="email"
														name="fromEmail" placeholder="Enter your email" required>
												</div>
											</div>
											<!--To  address  -->
											<input type="hidden" name="to"
												value="2100030314cse@gmail.com">
											<div class="col-md-6">
												<div class="mb-3">
													<label for="subjectInput" class="form-label">Subject</label>
													<input type="text" class="form-control is-required"
														id="subject" name="subject"
														placeholder="Enter your subject" required>
												</div>
											</div>
											<div class="col-lg-12">
												<div class="mb-3">
													<label for="messageInput" class="form-label">Your
														Message</label>
													<textarea class="form-control is-required" id="comments"
														name="content" rows="3" placeholder="Enter your message"
														required></textarea>
												</div>
											</div>
										</div>
										<div class="text-end">
											<button type="submit" name="submit" class="btn btn-primary">
												Send Message <i class="uil uil-message ms-1"></i>
											</button>
										</div>
									</form>

								</div>
							</div>
							<!--end col-->
							<div class="col-lg-5 ms-auto order-first order-lg-last">
								<div class="text-center">
									<img src="assets/images/contact.png" alt="" class="img-fluid">
								</div>
								<div class="mt-4 pt-3">
									<div class="d-flex text-muted align-items-center mt-2">
										<div class="flex-shrink-0 fs-22 text-primary">
											<i class="uil uil-map-marker"></i>
										</div>
										<div class="flex-grow-1 ms-2">
											<p class="mb-0">Vijayawada,vaddeswaram</p>
										</div>
									</div>
									<div class="d-flex text-muted align-items-center mt-2">
										<div class="flex-shrink-0 fs-22 text-primary">
											<i class="uil uil-envelope"></i>
										</div>
										<div class="flex-grow-1 ms-2">
											<p class="mb-0">contact@klp.com</p>
										</div>
									</div>
									<div class="d-flex text-muted align-items-center mt-2">
										<div class="flex-shrink-0 fs-22 text-primary">
											<i class="uil uil-phone-alt"></i>
										</div>
										<div class="flex-grow-1 ms-2">
											<p class="mb-0">(+91) 9515457683</p>
										</div>
									</div>
								</div>
							</div>
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<!-- START CONTACT-PAGE -->

				<div class="map">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.6645995502568!2d80.62035802501296!3d16.441851934292885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a073957d%3A0xe79d66babc83e470!2sK%20L%20UNIVERSITY%2C%20Vaddeswaram%2C%20Andhra%20Pradesh%20522303!5e0!3m2!1sen!2sin!4v1693368734960!5m2!1sen!2sin"
						height="450" style="border: 0;" allowfullscreen="" loading="lazy"
						referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>

			</div>
			<!-- End Page-content -->

			<%@ include file="chatbot.jsp"%>

			<%@ include file="footer.jsp"%>
			<!-- Style switcher -->
			<div id="style-switcher" onclick="toggleSwitcher()"
				style="left: -165px;">
				<div>
					<h6>Select your color</h6>
					<ul class="pattern list-unstyled mb-0">
						<li><a class="color-list color1" href="javascript: void(0);"
							onclick="setColorGreen()"></a></li>
						<li><a class="color-list color2" href="javascript: void(0);"
							onclick="setColor('blue')"></a></li>
						<li><a class="color-list color3" href="javascript: void(0);"
							onclick="setColor('green')"></a></li>
					</ul>
					<div class="mt-3">
						<h6>Light/dark Layout</h6>
						<div class="text-center mt-3">
							<!-- light-dark mode -->
							<a href="javascript: void(0);" id="mode"
								class="mode-btn text-white rounded-3"> <i
								class="uil uil-brightness mode-dark mx-auto"></i> <i
								class="uil uil-moon mode-light"></i>
							</a>
							<!-- END light-dark Mode -->
						</div>
					</div>
				</div>
				<div class="bottom d-none d-md-block">
					<a href="javascript: void(0);" class="settings rounded-end"><i
						class="mdi mdi-cog mdi-spin"></i></a>
				</div>
			</div>
			<!-- end switcher-->
		</div>
		<!-- end main content-->

	</div>
	<!-- END layout-wrapper -->

	<!-- JAVASCRIPT -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<!-- Contact Js -->
	<script src="assets/js/pages/contact.js"></script>

	<!-- App Js -->
	<script src="assets/js/app.js"></script>

</body>
</html>


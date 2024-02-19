<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


<meta charset="utf-8" />
<title>Jobs</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" " />
<meta name="keywords" content="" />
<meta content="Themesdesign" name="author" />

<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Choise Css -->
<link rel="stylesheet"
	href="assets/libs/choices.js/public/assets/styles/choices.min.css">

<!-- Nouislider Css -->
<link rel="stylesheet" href="assets/libs/nouislider/nouislider.min.css">
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
									<h3 class="mb-4">Job List</h3>
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

				<c:import url="/jobcard" />



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

	<!-- Choice Js -->
	<script
		src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>

	<!-- Nouislider Js -->
	<script src="assets/libs/nouislider/nouislider.min.js"></script>
	<script src="assets/js/pages/area-filter-range.init.js"></script>

	<!-- Checkbox Init Js -->
	<script src="assets/js/pages/checkbox.init.js"></script>

	<!-- Job Init Js -->
	<script src="assets/js/pages/job-list.init.js"></script>

	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<script src="assets/js/app.js"></script>

</body>

</html>
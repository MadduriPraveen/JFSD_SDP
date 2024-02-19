<!DOCTYPE html>
<html lang="en">

<head>


<meta charset="utf-8" />
<title>Sign In</title>
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
	<%@ include file="navbar.jsp"%>
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

	<!-- Begin page -->


	<div>

		<div class="main-content">

			<div class="page-content">

				<!-- START SIGN-IN -->
				<section class="bg-auth">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xl-10 col-lg-12">
								<div class="card auth-box">
									<div class="row g-0">
										<div class="col-lg-6 text-center">
											<div class="card-body p-4">
												<a href="Homebanner.jsp"> <img
													src="assets/images/logo-light.png" alt=""
													class="logo-light"> <img
													src="assets/images/logo-dark.png" alt="" class="logo-dark">
												</a>
												<div class="mt-5">
													<img src="assets/images/auth/sign-in.png" alt=""
														class="img-fluid">
												</div>
											</div>
										</div>
										<!--end col-->
										<div class="col-lg-6">
											<div class="auth-content card-body p-5 h-100 text-white">
												<div class="w-100">

													<div class="text-center mb-4">
														<h5>Welcome Back ADMIN !</h5>
													</div>
													<form action="/adminlogin" method="post">
														<div class="mb-3">
															<label for="usernameInput" class="form-label">Email</label>
															<input type="text" name="email" class="form-control"
																id="email" placeholder="Enter your Email" required>
														</div>
														<div class="mb-3">
															<label for="passwordInput" class="form-label">Password</label>
															<input type="password" name="password"
																class="form-control" id="pwd"
																placeholder="Enter your password" required>
														</div>
														<div class="mb-4">
															<div class="form-check">
																<input class="form-check-input" type="checkbox"
																	id="flexCheckDefault"> <a
																	href="reset-password.html" class="float-end text-white">Forgot
																	Password?</a> <label class="form-check-label"
																	for="flexCheckDefault">Remember me</label>
															</div>
														</div>
														<div class="text-center">
															<button type="submit"
																class="btn btn-white btn-hover w-100">Sign In</button>
														</div>
														<div class="mt-4 text-center">
															<p class="mb-0">
																Company<a href="companylogin.jsp"
																	class="fw-medium text-white text-decoration-underline">Login</a>
															</p>
														</div>
														<div class="mt-4 text-center">
															<p class="mb-0">
																user<a href="signin.jsp"
																	class="fw-medium text-white text-decoration-underline">Login</a>
															</p>
														</div>
												</div>
											</div>
										</div>
										<!--end col-->
									</div>
									<!--end row-->
								</div>
								<!--end auth-box-->
							</div>
							<!--end col-->
						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<!-- END SIGN-IN -->

			</div>
			<!-- End Page-content -->

		</div>
		<!-- end main content-->

	</div>
	<!-- END layout-wrapper -->

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

	<!--start back-to-top-->
	<button onclick="topFunction()" id="back-to-top">
		<i class="mdi mdi-arrow-up"></i>
	</button>
	<!--end back-to-top-->

	<!-- JAVASCRIPT -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<script>
                                                           // Assuming `message` is correctly populated with the error message from the server.
                                                          var message = "${message}";
                                                            if (message) {
                                                                alert(message);
                                                                  }
                                                         </script>

</body>
</html>
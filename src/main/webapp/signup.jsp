<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


<meta charset="utf-8" />
<title>Sign Up</title>
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

	<!-- Begin page -->
	<div>


		<div class="main-content">

			<div class="page-content">

				<!-- START SIGN-UP -->
				<section class="bg-auth">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-xl-10 col-lg-12">
								<div class="card auth-box">
									<div class="row align-items-center">
										<div class="col-lg-6 text-center">
											<div class="card-body p-4">
												<a href="Homebanner.jsp"> <img
													src="assets/images/logo-light.png" alt=""
													class="logo-light"> <img
													src="assets/images/logo-dark.png" alt="" class="logo-dark">
												</a>
												<div class="mt-5">
													<img src="assets/images/auth/sign-up.png" alt=""
														class="img-fluid">
												</div>
											</div>
										</div>
										<!--end col-->
										<div class="col-lg-6">
											<div class="auth-content card-body p-5 text-white">
												<div class="w-100">
													<div class="text-center">
														<h5>Let's Get Started</h5>
														<p class="text-white-70">Sign Up and get access to all
															the features of KLPlacements</p>
													</div>
													<form method="post" action="insertuser" class="auth-form"
														enctype="multipart/form-data">
														<div class="mb-3">
															<label for="usernameInput" class="form-label">Username</label>
															<input type="text" class="form-control" name="username"
																id="usernameInput" placeholder="Enter your username"
																required oninput="validateUsername(this)">
														</div>
														<script>
    function validateUsername(input) {
        // Define your validation criteria here
        const regex = /^[a-zA-Z]{4,}$/; // This regex allows letters, numbers, and underscores and requires at least 4 characters.
        const isValid = regex.test(input.value);

        if (!isValid) {
            input.setCustomValidity("Please enter a valid username.");
        } else {
            input.setCustomValidity("");
        }
    }
</script>

														<div class="mb-3">
															<label for="nameInput" class="form-label">Full
																Name</label> <input type="text" class="form-control" name="name"
																id="nameInput" placeholder="Enter your full name"
																required oninput="validateName(this)">
														</div>
														<script>
    function validateName(input) {
        const regex = /^[a-zA-Z]+$/; // This regex allows only alphabetic characters.
        const isValid = regex.test(input.value);

        if (!isValid) {
            input.setCustomValidity("Please enter only alphabetic characters.");
        } else {
            input.setCustomValidity("");
        }
    }
</script>

														<div class="mb-3">
															<label for="cityInput" class="form-label">City</label> <input
																type="text" class="form-control" name="city"
																id="cityInput" placeholder="Enter your city" required>
														</div>
														<div class="mb-3">
															<label for="contactInput" class="form-label">Mobile
																No.</label> <input type="text" class="form-control"
																name="contact" id="contactInput"
																placeholder="Enter your 10-digit mobile number"
																pattern="[0-9]{10}"
																title="Please enter a 10-digit number" maxlength="10"
																required>
														</div>


														<div class="mb-3">
															<label for="dobInput" class="form-label">Date of
																Birth</label> <input type="date" class="form-control" name="dob"
																id="dobInput" required>
														</div>
														<div class="mb-3">
															<label for="emailInput" class="form-label">Email</label>
															<input type="email" class="form-control" name="email"
																id="emailInput" placeholder="Enter your email" required>
														</div>
														<div class="mb-3">
															<label for="passwordInput" class="form-label">Password</label>
															<input type="password" class="form-control" name="pwd"
																id="passwordInput" placeholder="Enter your password"
																required>
														</div>
														<div class="mb-4">
															<div class="form-check">
																<input class="form-check-input" type="checkbox"
																	id="flexCheckDefault"> <label
																	class="form-check-label" for="flexCheckDefault">I
																	agree to the <a href="javascript:void(0)"
																	class="text-white text-decoration-underline">Terms
																		and conditions</a>
																</label>
															</div>
														</div>
														<div class="mb-3">
															<div class="text-center">
																<button type="submit"
																	class="btn btn-white btn-hover w-100">Sign Up</button>
															</div>
													</form>


													<div class="mt-3 text-center">
														<p class="mb-0">
															Already a member ? <a href="signin.jsp"
																class="fw-medium text-white text-decoration-underline">
																Sign In </a>
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
				<!-- END SIGN-UP -->

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

	<%@ include file="chatbot.jsp"%>

	<!-- JAVASCRIPT -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>
	<script>
    var message = "${message}";
    if (message) {
        alert(message);
    }

    var errorMessage = "${errorMessage}";
    if (errorMessage) {
        alert(errorMessage);
    }
</script>


</body>
</html>
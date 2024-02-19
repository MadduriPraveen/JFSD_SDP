<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>


<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" " />
<meta name="keywords" content="" />
<meta content="Themesdesign" name="author" />

<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/newf.png">

<!-- Choise Css -->
<link rel="stylesheet"
	href="assets/libs/choices.js/public/assets/styles/choices.min.css">

<!-- Swiper Css -->
<link rel="stylesheet" href="assets/libs/swiper/swiper-bundle.min.css">

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
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<div>
		<!-- START TOP-BAR -->
		<div class="top-bar">
			<div class="container-fluid custom-container">
				<div class="row g-0 align-items-center">
					<div class="col-md-7">
						<div class="col-md-7">
							<ul class="list-inline mb-0 text-center text-md-start">
								<li class="list-inline-item">
									<p class="fs-13 mb-0">
										<i class="mdi mdi-map-marker"></i> Follow Us<a
											href="javascript:void(0)" class="text-dark">:</a>
									</p>
								</li>
								<li class="list-inline-item">
									<ul class="topbar-social-menu list-inline mb-0">
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="social-link"><i class="uil uil-whatsapp"></i></a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="social-link"><i
												class="uil uil-facebook-messenger-alt"></i></a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="social-link"><i class="uil uil-instagram"></i></a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="social-link"><i class="uil uil-envelope"></i></a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="social-link"><i class="uil uil-twitter-alt"></i></a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-md-5">
						<ul class="list-inline mb-0 text-center text-md-end">
							<c:choose>
								<c:when test="${sessionScope.uid ne null}">
									<li class="list-inline-item py-2 me-2 align-middle"><a
										href="sign-out" class="text-dark fw-medium fs-13"><i
											class="uil uil-lock"></i> Logout</a></li>
									<li class="list-inline-item py-2 me-2 align-middle"><a
										href="profile" class="text-dark fw-medium fs-13"><i
											class="uil uil-user"></i> Profile</a></li>
								</c:when>
								<c:otherwise>
									<li class="list-inline-item py-2 me-2 align-middle"><a
										href="signin.jsp" class="text-dark fw-medium fs-13"
										data-bs-toggle="modal"><i class="uil uil-user"></i> Sign
											In</a></li>
									<li class="list-inline-item py-2 me-2 align-middle"><a
										href="signup.jsp" class="text-dark fw-medium fs-13"
										data-bs-toggle="modal"><i class="uil uil-lock"></i> Sign
											Up</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- END TOP-BAR -->
		<!--Navbar Start-->
		<nav class="navbar navbar-expand-lg fixed-top sticky" id="navbar">
			<div class="container-fluid custom-container">
				<a class="navbar-brand text-dark fw-bold me-auto"
					href="Homebanner.jsp"> <img src="assets/images/logo-dark.png"
					height="40" alt="" class="logo-dark" /> <img
					src="assets/images/logo-light.png" height="40" alt=""
					class="logo-light" />
				</a>
				<div>
					<button class="navbar-toggler me-3" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
						aria-controls="navbarCollapse" aria-label="Toggle navigation">
						<i class="mdi mdi-menu"></i>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav mx-auto navbar-center">
						<li class="nav-item dropdown dropdown-hover"><a
							class="nav-link" href="Homebanner.jsp" id="homedrop"
							role="button"> Home </a></li>
						<li class="nav-item dropdown dropdown-hover"><a
							class="nav-link" href="about.jsp" id="jobsdropdown" role="button">
								About </a></li>
						<li class="nav-item dropdown dropdown-hover"><a
							class="nav-link" href="jobs" id="pagesdoropdown" role="button"
							data-bs-toggle="dropdowcn"> Jobs </a></li>
						<!--end dropdown-->
						<!--end dropdown-->
						<li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a>
						</li>
					</ul>
					<!--end navbar-nav-->
				</div>
				<!--end navabar-collapse-->
				<ul class="header-menu list-inline d-flex align-items-center mb-0">




					<li class="list-inline-item dropdown"><a
						href="javascript:void(0)" class="header-item" id="userdropdown"
						onclick="toggleDropdown()" aria-expanded="false"> <span
							class="d-none d-md-inline-block fw-medium"> <c:choose>
									<c:when test="${not empty uname}">
										<c:out value="${uname}" />
										<img src="assets/images/profile.jpg" alt="mdo" width="35"
											height="35" class="rounded-circle me-1">
									</c:when>
									<c:otherwise>
                    Login
                </c:otherwise>
								</c:choose>
						</span>
					</a>
						<ul id="userDropdownMenu" class="dropdown-menu dropdown-menu-end"
							aria-labelledby="userdropdown">
							<c:choose>
								<c:when test="${not empty uname}">
									<li><a class="dropdown-item" href="profile">My Profile</a></li>
									<li><a class="dropdown-item" href="sign-out">Logout</a></li>
								</c:when>
							</c:choose>
						</ul></li>

					<script>
    function toggleDropdown() {
        var userDropdownMenu = document.getElementById('userDropdownMenu');
        if (${not empty uname}) {
            userDropdownMenu.classList.toggle('show');
        } else {
            window.location.href = 'signin.jsp'; // Redirect to login page
        }
    }
</script>




				</ul>
				<!--end header-menu-->
			</div>
			<!--end container-->
		</nav>

	</div>
	<!-- END layout-wrapper -->

	<!-- JAVASCRIPT -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>


	<!-- Choice Js -->
	<script
		src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>

	<!-- Swiper Js -->
	<script src="assets/libs/swiper/swiper-bundle.min.js"></script>

	<!-- Index Js -->
	<script src="assets/js/pages/job-list.init.js"></script>

	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<script src="assets/js/pages/index.init.js"></script>

	<!-- App Js -->
	<script src="assets/js/app.js"></script>

</body>
</html>

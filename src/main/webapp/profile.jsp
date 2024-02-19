<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>My Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content=" " />
<meta name="keywords" content="" />
<meta content="Themesdesign" name="author" />

<!-- App favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

<!-- Choise Css -->
<link rel="stylesheet"
	href="assets/libs/choices.js/public/assets/styles/choices.min.css">

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
		<%@ include file="navbar.jsp"%>
		<div class="main-content">
			<div class="page-content">
				<!-- Start home -->
				<section class="page-title-box">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-6">
								<div class="text-center text-white">
									<h3 class="mb-4">My Profile</h3>
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
				<!-- START PROFILE -->
				<c:choose>
					<c:when test="${sessionScope.uid != null}">
						<section class="section">
							<div class="container">
								<div class="row">
									<div class="col-lg-4">
										<div class="card profile-sidebar me-lg-4">
											<div class="card-body p-4">
												<div class="text-center pb-4 border-bottom">
													<img src="assets/images/profile.jpg" alt=""
														class="avatar-lg img-thumbnail rounded-circle mb-4" />
													<h5 class="mb-0">${user.name}</h5>
													<p class="text-muted">${user.dateofbirth}</p>
												</div>
												<!--end profile-->

												<!--end document-->
												<div class="mt-4">
													<h5 class="fs-17 fw-bold mb-3">Details</h5>
													<div class="profile-contact">
														<ul class="list-unstyled mb-0">
															<li>
																<div class="d-flex">
																	<label>UserName</label>
																	<div>
																		<p class="text-muted text-break mb-0">
																			${user.username}</p>
																	</div>
																</div>
															</li>
															<li>
																<div class="d-flex">
																	<label>Email</label>
																	<div>
																		<p class="text-muted text-break mb-0">
																			${user.email}</p>
																	</div>
																</div>
															</li>
															<li>
																<div class="d-flex">
																	<label>Phone Number</label>
																	<div>
																		<p class="text-muted mb-0">${user.contact}</p>
																	</div>
																</div>
															</li>
															<li>
																<div class="d-flex">
																	<label>Location</label>
																	<div>
																		<p class="text-muted mb-0">${user.city}</p>
																	</div>
																</div>
															</li>
														</ul>
													</div>
												</div>
												<!--end contact-details-->
											</div>
											<!--end card-body-->
										</div>
										<!--end profile-sidebar-->
									</div>

									<!--end col-->
									<div class="col-lg-8">
										<div class="card profile-content-page mt-4 mt-lg-0">
											<ul
												class="profile-content-nav nav nav-pills border-bottom mb-4"
												id="pills-tab" role="tablist">
												<li class="nav-item" role="presentation">
													<button class="nav-link active" id="overview-tab"
														data-bs-toggle="pill" data-bs-target="#overview"
														type="button" role="tab" aria-controls="overview"
														aria-selected="true"
														onclick="showTab('#overview-tab', '#overview')">
														Overview</button>
												</li>
												<li class="nav-item" role="presentation">
													<button class="nav-link" id="settings-tab"
														data-bs-toggle="pill" data-bs-target="#settings"
														type="button" role="tab" aria-controls="settings"
														aria-selected="false"
														onclick="showTab('#settings-tab', '#settings')">
														Settings</button>
												</li>
											</ul>
											<!--end profile-content-nav-->
											<div class="card-body p-4">
												<div class="tab-content" id="pills-tabContent">
													<div class="tab-pane fade show active" id="overview"
														role="tabpanel" aria-labelledby="overview-tab">
														<div>
															<h5 class="fs-18 fw-bold">About</h5>
															<p class="text-muted mt-4">${user.about}</p>

														</div>
														<div class="candidate-education-details mt-4">
															<h6 class="fs-18 fw-bold mb-0">Education</h6>
															<div class="candidate-education-content mt-4 d-flex">
																<p class="mb-2 text-muted">${user.education}</p>
															</div>
														</div>

														<div class="mt-4">
															<h5 class="fs-18 fw-bold">Skills</h5>
															<div class="candidate-education-content mt-4 d-flex">
																<p class="mb-2 text-muted">${user.skills}</p>
															</div>
														</div>
													</div>
													<div class="tab-pane fade" id="settings" role="tabpanel"
														aria-labelledby="settings-tab">
														<form action="updateUserData" method="post">
															<div>
																<h5 class="fs-17 fw-semibold mb-3 mb-0">My Account</h5>
																<div class="text-center">
																	<div class="mb-4 profile-user">

																		<img src="assets/images/profile.jpg"
																			class="rounded-circle img-thumbnail profile-img"
																			id="profile-img" alt="">
																		<div class="p-0 rounded-circle profile-photo-edit">
																			<input id="profile-img-file-input" type="file"
																				class="profile-img-file-input"
																				onchange="previewImg()"> <label
																				for="profile-img-file-input"
																				class="profile-photo-edit avatar-xs"> <i
																				class="uil uil-edit"></i>
																			</label>
																		</div>
																	</div>
																</div>
																<div class="row">
																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="name" class="form-label">UserName</label>
																			<input type="text" class="form-control" id="username"
																				name="username" value="${user.username}" />
																		</div>
																	</div>
																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="name" class="form-label">Name</label> <input
																				type="text" class="form-control" id="name"
																				name="name" value="${user.name}" />
																		</div>
																	</div>
																	<!--end col-->
																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="email" class="form-label">Email</label> <input
																				type="email" class="form-control" id="email"
																				name="email" value="${user.email}" />
																		</div>
																	</div>

																	<!--end col-->
																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="contact" class="form-label">MobileNumber</label>
																			<input type="text" class="form-control" id="contact"
																				name="contact" value="${user.contact}" />
																		</div>
																	</div>
																	<!--end col-->

																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="city" class="form-label">City</label> <input
																				type="text" class="form-control" id="city"
																				name="city" value="${user.city}" />
																		</div>
																	</div>

																	<div class="mb-3">
																		<label for="dob" class="form-label">Date of
																			Birth</label> <input type="date" class="form-control"
																			id="dob" name="dob" value="${user.dateofbirth}" />
																	</div>

																	<!--end col-->

																</div>
																<!--end row-->
															</div>
															<!--end account-->
															<div class="mt-4">
																<h5 class="fs-17 fw-semibold mb-3">About</h5>
																<div class="row">
																	<div class="col-lg-12">
																		<div class="mb-3">
																			<label for="exampleFormControlTextarea1"
																				class="form-label">Introduce Yourself</label>
																			<textarea class="form-control"
																				id="exampleFormControlTextarea1" rows="5"
																				name="about">${user.about}</textarea>
																		</div>
																	</div>

																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="education" class="form-label">Education</label>
																			<input type="text" class="form-control"
																				id="education" name="education"
																				value="${user.education}" />
																		</div>
																	</div>

																	<div class="col-lg-6">
																		<div class="mb-3">
																			<label for="skills" class="form-label">Skills</label>
																			<input type="text" class="form-control" id="skills"
																				name="skills" value="${user.skills}" />
																		</div>
																	</div>



																	<div class="col-lg-12">
																		<div class="mb-3">
																			<label for="attachmentscv" class="form-label">Attachments
																				CV</label> <input class="form-control" type="file"
																				id="attachmentscv" />
																		</div>
																	</div>
																	<!--end col-->
																</div>
																<!--end row-->
															</div>
															<!--end profile-->
															<div class="mt-4">
																<!--end socia-media-->
																<div class="mt-4 text-end">
																	<button type="submit" class="btn btn-primary">Update</button>
																</div>
														</form>
														<!--end form-->
													</div>
													<!--end tab-pane-->
												</div>
												<!--end tab-content-->
											</div>
											<!--end card-body-->
										</div>
										<!--end profile-content-page-->
									</div>
									<!--end col-->
								</div>
								<!--end row-->
							</div>
							<!--end container-->
						</section>
					</c:when>
					<c:otherwise>
						<center>
							<br> <br> <br>
							<div class="container mt-5">
								<div class="row justify-content-center">
									<div class="col-md-6">
										<div class="card border border-dark">
											<div class="card-body text-center">
												<br> <br>
												<p class="card-text">
													Please <a href="signin.jsp">login</a> to view your profile.
												</p>
												<br> <br>
											</div>
										</div>
									</div>
								</div>
							</div>

							<br> <br> <br> <br>
						</center>
					</c:otherwise>
				</c:choose>
				<!-- END PROFILE -->

			</div>
			<!-- End Page-content -->

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

			<!--start back-to-top-->
			<button onclick="topFunction()" id="back-to-top">
				<i class="mdi mdi-arrow-up"></i>
			</button>
			<!--end back-to-top-->
		</div>
		<!-- end main content-->

	</div>
	<!-- END layout-wrapper -->

	<!-- JAVASCRIPT -->
	<script>
    function showTab(tabId, targetId) {
        document.querySelectorAll('.nav-link').forEach(function (el) {
            el.classList.remove('active');
        });
        document.querySelector(tabId).classList.add('active');

        // Show the corresponding content
        document.querySelectorAll('.tab-pane').forEach(function (el) {
            el.classList.remove('show', 'active');
        });

        document.querySelector(targetId).classList.add('show', 'active');
    }
</script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>
	<!-- Choice Js -->
	<script
		src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>

	<!-- Job-list Init Js -->
	<script src="assets/js/pages/job-list.init.js"></script>

	<!-- Switcher Js -->
	<script src="assets/js/pages/switcher.init.js"></script>

	<!-- App Js -->
	<script src="assets/js/app.js"></script>

</body>
</html>
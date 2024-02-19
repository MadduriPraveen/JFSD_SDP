<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>


<meta charset="utf-8" />
<title>Home</title>
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


	<%@ include file="navbar.jsp"%>
	<div class="main-content">

		<div class="page-content">



			<!-- START HOME -->
			<section class="bg-home2" id="home">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-7">
							<div class="mb-4 pb-3 me-lg-5">
								<h6 class="sub-title">10,000+ live jobs</h6>
								<h1 class="display-5 fw-semibold mb-3">
									Find your dream jobs with <span class="text-primary fw-bold">KLPlacements</span>
								</h1>
								<p class="lead text-muted mb-0">Find jobs, create trackable
									resumes and enrich your applications.Carefully crafted after
									analyzing the needs of different industries.</p>
							</div>

						</div>
						<!--end col-->
						<div class="col-lg-5">
							<div class="mt-5 mt-md-0">
								<img src="assets/images/process-02.png" alt="" class="home-img" />
							</div>
						</div>
						<!--end col-->
					</div>
					<!--end row-->
				</div>
				<!--end container-->
			</section>
			<!-- End Home -->

			<!-- START SHAPE -->
			<div class="position-relative">
				<div class="shape">
					<svg xmlns="http://www.w3.org/2000/svg" version="1.1"
						xmlns:xlink="http://www.w3.org/1999/xlink" width="1440"
						height="150" preserveAspectRatio="none" viewBox="0 0 1440 220">
                                <g
							mask="url(&quot;#SvgjsMask1004&quot;)" fill="none">
                                    <path
							d="M 0,213 C 288,186.4 1152,106.6 1440,80L1440 250L0 250z"
							fill="rgba(255, 255, 255, 1)"></path>
                                </g>
                                <defs>
                                    <mask id="SvgjsMask1004">
                                        <rect width="1440" height="250"
							fill="#ffffff"></rect>
                                    </mask>
                                </defs>
                            </svg>
				</div>
			</div>
			<!-- END SHAPE -->


			<!-- START JOB-LIST -->
			<section class="section bg-light">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-6">
							<div class="section-title text-center mb-4 pb-2">
								<h4 class="title">Trending Jobs</h4>
								<p class="text-muted mb-1">Post a job to tell us about your
									project. We'll quickly match you with the right freelancers.</p>
							</div>
						</div>
						<!--end col-->
					</div>
					<!--end row-->
					<c:import url="/jobcard" />

					<!--end col-->
				</div>
				<!--end row-->
		</div>
		<!--end container-->
		</section>
		<!-- END JOB-LIST -->

		<!-- START PROCESS -->
		<section class="section">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="section-title me-5">
							<h3 class="title">How It Work</h3>
							<p class="text-muted">Post a job to tell us about your
								project. We'll quickly match you with the right freelancers.</p>
							<div class="process-menu nav flex-column nav-pills"
								id="v-pills-tab" role="tablist" aria-orientation="vertical">
								<a class="nav-link active" id="v-pills-home-tab"
									data-bs-toggle="pill" href="#v-pills-home" role="tab"
									aria-controls="v-pills-home" aria-selected="true">
									<div class="d-flex">
										<div class="number flex-shrink-0">1</div>
										<div class="flex-grow-1 text-start ms-3">
											<h5 class="fs-18">Register an account</h5>
											<p class="text-muted mb-0">Due to its widespread use as
												filler text for layouts, non-readability is of great
												importance.</p>
										</div>
									</div>
								</a> <a class="nav-link" id="v-pills-profile-tab"
									data-bs-toggle="pill" href="#v-pills-profile" role="tab"
									aria-controls="v-pills-profile" aria-selected="false">
									<div class="d-flex">
										<div class="number flex-shrink-0">2</div>
										<div class="flex-grow-1 text-start ms-3">
											<h5 class="fs-18">Find your job</h5>
											<p class="text-muted mb-0">There are many variations of
												passages of avaibookmark-label, but the majority alteration
												in some form.</p>
										</div>
									</div>
								</a> <a class="nav-link" id="v-pills-messages-tab"
									data-bs-toggle="pill" href="#v-pills-messages" role="tab"
									aria-controls="v-pills-messages" aria-selected="false">
									<div class=" d-flex">
										<div class="number flex-shrink-0">3</div>
										<div class="flex-grow-1 text-start ms-3">
											<h5 class="fs-18">Apply for job</h5>
											<p class="text-muted mb-0">It is a long established fact
												that a reader will be distracted by the readable content of
												a page.</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!--end col-->
					<div class="col-lg-6">
						<div class="tab-content" id="v-pills-tabContent">
							<div class="tab-pane fade show active" id="v-pills-home"
								role="tabpanel" aria-labelledby="v-pills-home-tab">
								<img src="assets/images/process-01.png" alt="" class="img-fluid">
							</div>
							<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
								aria-labelledby="v-pills-profile-tab">
								<img src="assets/images/process-02.png" alt="" class="img-fluid">
							</div>
							<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
								aria-labelledby="v-pills-messages-tab">
								<img src="assets/images/process-03.png" alt="" class="img-fluid">
							</div>
						</div>
					</div>
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</section>
		<!-- END PROCESS -->

		<!--START CTA-->
		<section class="section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="text-center">
							<h2 class="text-primary mb-4">
								Browse Our <span class="text-warning fw-bold">5,000+</span>
								Latest Jobs
							</h2>
							<p class="text-muted">Post a job to tell us about your
								project. We'll quickly match you with the right freelancers.</p>
							<div class="mt-4 pt-2">
								<a href="javascript:void(0)" class="btn btn-primary btn-hover">Started
									Now <i class="uil uil-rocket align-middle ms-1"></i>
								</a>
							</div>
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</section>
		<!--END CTA-->

		<!-- START TESTIMONIAL -->
		<section class="section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title text-center mb-4 pb-2">
							<h3 class="title mb-3">Happy Candidates</h3>
							<p class="text-muted">Post a job to tell us about your
								project. We'll quickly match you with the right freelancers.</p>
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->
				<div class="row justify-content-center">
					<div class="col-lg-10">
						<div class="swiper testimonialSlider pb-5">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<div class="card testi-box">
										<div class="card-body">
											<div class="mb-4">
												<img src="assets/images/logo/mailchimp.svg" height="50"
													alt="" />
											</div>
											<p class="testi-content lead text-muted mb-4">" Very well
												thought out and articulate communication. Clear milestones,
												deadlines and fast work. Patience. Infinite patience. No
												shortcuts. Even if the client is being careless. "</p>
											<h5 class="mb-0">Jeffrey Montgomery</h5>
											<p class="text-muted mb-0">Product Manager</p>
										</div>
									</div>
								</div>
								<!--end swiper-slide-->
								<div class="swiper-slide">
									<div class="card testi-box">
										<div class="card-body">
											<div class="mb-4">
												<img src="assets/images/logo/wordpress.svg" height="50"
													alt="" />
											</div>
											<p class="testi-content lead text-muted mb-4">" Very well
												thought out and articulate communication. Clear milestones,
												deadlines and fast work. Patience. Infinite patience. No
												shortcuts. Even if the client is being careless. "</p>
											<h5 class="mb-0">Rebecca Swartz</h5>
											<p class="text-muted mb-0">Creative Designer</p>
										</div>
									</div>
								</div>
								<!--end swiper-slide-->
								<div class="swiper-slide">
									<div class="card testi-box">
										<div class="card-body">
											<div class="mb-4">
												<img src="assets/images/logo/instagram.svg" height="50"
													alt="" />
											</div>
											<p class="testi-content lead text-muted mb-4">" Very well
												thought out and articulate communication. Clear milestones,
												deadlines and fast work. Patience. Infinite patience. No
												shortcuts. Even if the client is being careless. "</p>
											<h5 class="mb-0">Charles Dickens</h5>
											<p class="text-muted mb-0">Store Assistant</p>
										</div>
									</div>
								</div>
								<!--end swiper-slide-->
							</div>
							<!--end swiper-wrapper-->
							<div class="swiper-pagination"></div>
						</div>
						<!--end swiper-container  -->
					</div>
					<!--end col-->
				</div>
				<!--end row-->
			</div>
		</section>
		<!-- END TESTIMONIAL -->

		<!-- START BLOG -->
		<section class="section bg-light">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title text-center mb-5">
							<h3 class="title mb-3">Quick Career Tips</h3>
							<p class="text-muted">Post a job to tell us about your
								project. We'll quickly match you with the right freelancers.</p>
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="blog-box card p-2 mt-3">
							<div class="blog-img position-relative overflow-hidden">
								<img src="assets/images/blog/img-01.jpg" alt=""
									class="img-fluid">
								<div class="bg-overlay"></div>
								<div class="author">
									<p class=" mb-0">
										<i class="mdi mdi-account text-light"></i> <a
											href="javascript:void(0)" class="text-light user">Dirio
											Walls</a>
									</p>
									<p class="text-light mb-0 date">
										<i class="mdi mdi-calendar-check"></i> 01 July, 2021
									</p>
								</div>
								<div class="likes">
									<ul class="list-unstyled mb-0">
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i class="mdi mdi-heart-outline me-1"></i>
												33</a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i
												class="mdi mdi-comment-outline me-1"></i> 08</a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<a href="blog-details.html" class="primary-link">
									<h5 class="fs-17">How apps is the IT world ?</h5>
								</a>
								<p class="text-muted">The final text is not yet
									avaibookmark-label. Dummy texts have Internet tend been in use
									by typesetters.</p>
								<a href="blog-details.html" class="form-text text-primary">Read
									more <i class="mdi mdi-chevron-right align-middle"></i>
								</a>
							</div>
						</div>
						<!--end blog-box-->
					</div>
					<!--end col-->

					<div class="col-lg-4 col-md-6">
						<div class="blog-box card p-2 mt-3">
							<div class="blog-img position-relative overflow-hidden">
								<img src="assets/images/blog/img-02.jpg" alt=""
									class="img-fluid">
								<div class="bg-overlay"></div>
								<div class="author">
									<p class=" mb-0">
										<i class="mdi mdi-account text-light"></i> <a
											href="javascript:void(0)" class="text-light user">Brandon
											Carney</a>
									</p>
									<p class="text-light mb-0 date">
										<i class="mdi mdi-calendar-check"></i> 25 June, 2021
									</p>
								</div>
								<div class="likes">
									<ul class="list-unstyled mb-0">
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i class="mdi mdi-heart-outline me-1"></i>
												44</a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i
												class="mdi mdi-comment-outline me-1"></i> 25</a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<a href="blog-details.html" class="primary-link">
									<h5 class="fs-17">Smartest Applications for Business ?</h5>
								</a>
								<p class="text-muted">Due to its widespread use as filler
									text for layouts, non-readability is of great importance: human
									perception.</p>
								<a href="blog-details.html" class="form-text text-primary">Read
									more <i class="mdi mdi-chevron-right align-middle"></i>
								</a>
							</div>
						</div>
						<!--end blog-box-->
					</div>
					<!--end col-->

					<div class="col-lg-4 col-md-6">
						<div class="blog-box card p-2 mt-3">
							<div class="blog-img position-relative overflow-hidden">
								<img src="assets/images/blog/img-03.jpg" alt=""
									class="img-fluid">
								<div class="bg-overlay"></div>
								<div class="author">
									<p class=" mb-0">
										<i class="mdi mdi-account text-light"></i> <a
											href="javascript:void(0)" class="text-light user">William
											Mooneyhan</a>
									</p>
									<p class="text-light mb-0 date">
										<i class="mdi mdi-calendar-check"></i> 16 March, 2021
									</p>
								</div>
								<div class="likes">
									<ul class="list-unstyled mb-0">
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i class="mdi mdi-heart-outline me-1"></i>
												68</a></li>
										<li class="list-inline-item"><a href="javascript:void(0)"
											class="text-white"><i
												class="mdi mdi-comment-outline me-1"></i> 20</a></li>
									</ul>
								</div>
							</div>
							<div class="card-body">
								<a href="blog-details.html" class="primary-link">
									<h5 class="fs-17">Design your apps in your own way ?</h5>
								</a>
								<p class="text-muted">One disadvantage of Lorum Ipsum is
									that in Latin certain letters appear more frequently than
									others.</p>
								<a href="blog-details.html" class="form-text text-primary">Read
									more <i class="mdi mdi-chevron-right align-middle"></i>
								</a>
							</div>
						</div>
						<!--end blog-box-->
					</div>
					<!--end col-->
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</section>
		<!-- END BLOG -->

		<!-- START CLIENT -->
		<div class="py-4">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title=""
								data-bs-original-title="Woocommerce"> <img
								src="assets/images/logo/logo-01.png" alt="" class="img-fluid">
							</a>
						</div>
					</div>
					<!--end col-->
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title="" data-bs-original-title="Envato">
								<img src="assets/images/logo/logo-02.png" alt=""
								class="img-fluid">
							</a>
						</div>
					</div>
					<!--end col-->
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title=""
								data-bs-original-title="Magento"> <img
								src="assets/images/logo/logo-03.png" alt="" class="img-fluid">
							</a>
						</div>
					</div>
					<!--end col-->
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title=""
								data-bs-original-title="Wordpress"> <img
								src="assets/images/logo/logo-04.png" alt="" class="img-fluid">
							</a>
						</div>
					</div>
					<!--end col-->
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title=""
								data-bs-original-title="Generic"> <img
								src="assets/images/logo/logo-05.png" alt="" class="img-fluid">
							</a>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="text-center p-3">
							<a href="javascript:void(0)" data-bs-toggle="tooltip"
								data-bs-placement="top" title="" data-bs-original-title="Reveal">
								<img src="assets/images/logo/logo-06.png" alt=""
								class="img-fluid">
							</a>
						</div>
					</div>
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</div>
		<!-- END CLIENT -->

		<!-- START APPLY MODAL -->
		<div class="modal fade" id="applyNow" tabindex="-1"
			aria-labelledby="applyNow" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-body p-5">
						<div class="text-center mb-4">
							<h5 class="modal-title" id="staticBackdropLabel">Apply For
								This Job</h5>
						</div>
						<div class="position-absolute end-0 top-0 p-3">
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="mb-3">
							<label for="nameControlInput" class="form-label">Name</label> <input
								type="text" class="form-control" id="nameControlInput"
								placeholder="Enter your name">
						</div>
						<div class="mb-3">
							<label for="emailControlInput2" class="form-label">Email
								Address</label> <input type="email" class="form-control"
								id="emailControlInput2" placeholder="Enter your email">
						</div>
						<div class="mb-3">
							<label for="messageControlTextarea" class="form-label">Message</label>
							<textarea class="form-control" id="messageControlTextarea"
								rows="4" placeholder="Enter your message"></textarea>
						</div>
						<div class="mb-4">
							<label class="form-label" for="inputGroupFile01">Resume
								Upload</label> <input type="file" class="form-control"
								id="inputGroupFile01">
						</div>
						<button type="submit" class="btn btn-primary w-100">Send
							Application</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END APPLY MODAL -->

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

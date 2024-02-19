<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Job List</title>
<!-- Add your head content here -->

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

<!-- Custom Css -->
<style>
.container {
	padding-top: 20px; /* Adjust this value to your preference */
	padding-bottom: 50px; /* Adjust this value to your preference */
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<!-- Iterate over jobs using JSTL forEach -->
			<c:forEach var="job" items="${jobs}">
				<div class="col-lg-12">
					<div class="job-box card mt-4">
						<div class="bookmark-label text-center">
							<a href="javascript:void(0)" class="text-white align-middle"><i
								class="mdi mdi-star"></i></a>
						</div>
						<div class="p-4">
							<div class="row align-items-center">
								<!-- Job listing content goes here -->
								<div class="col-md-2">
									<div class="text-center mb-4 mb-lg-0">
										<a href="company-details.html"> <img
											src="assets/images/featured-job/img-04.png" alt=""
											class="img-fluid rounded-3">
										</a>
									</div>
								</div>
								<!--end col-->
								<div class="col-md-3">
									<div class="mb-2 mb-md-0">
										<h5 class="fs-18 mb-1">
											<a href="job-details.html" class="text-dark">${job.jobTitle}</a>
										</h5>
										<p class="text-muted fs-14 mb-0">By: ${job.company.name}</p>
									</div>
								</div>
								<!--end col-->
								<div class="col-md-3">
									<div class="d-flex mb-2">
										<div class="flex-shrink-0">
											<i class="mdi mdi-map-marker text-primary me-1"></i>
										</div>
										<p class="text-muted mb-0">${job.location}</p>
									</div>
								</div>
								<!--end col-->
								<div class="col-md-2">
									<div>
										<p class="text-muted mb-2">
											<span class="text-primary">$</span>${job.price}/m</p>
									</div>
								</div>
								<!--end col-->
								<div class="col-md-2">
									<div>
										<span class="badge bg-success-subtle text-success fs-13 mt-1">${job.jobType}</span>
									</div>
								</div>
								<!--end col-->
							</div>
							<!--end row-->
						</div>
						<div class="p-3 bg-light">
							<div class="row justify-content-between">
								<div class="col-md-4">
									<div>
										<p class="text-muted mb-0">
											<span class="text-dark">Experience :</span>${job.experience}</p>
									</div>
								</div>
								<div class="col-lg-2 col-md-2">
									<div class="text-start text-md-end">
										<form action="/applyJob" method="post">
											<input type="hidden" name="jobId" value="${job.id}">
											<input type="hidden" name="companyId"
												value="${job.company.id}"> <input type="hidden"
												name="userId" value="${sessionScope.uid}"> <input
												type="hidden" name="userEmail" value="${sessionScope.email}">
											<button type="submit" class="btn btn-primary">Apply
												Now</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!--end job-box-->
		</div>
		<!--end row-->
	</div>
	<!--end container-->

	<!-- JAVASCRIPT -->
	<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://unicons.iconscout.com/release/v4.0.0/script/monochrome/bundle.js"></script>
	<script
		src="assets/libs/choices.js/public/assets/scripts/choices.min.js"></script>
	<script src="assets/libs/swiper/swiper-bundle.min.js"></script>
	<script src="assets/js/pages/job-list.init.js"></script>
	<script src="assets/js/pages/switcher.init.js"></script>
	<script src="assets/js/pages/index.init.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>

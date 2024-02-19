<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Job List</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="shortcut icon" href="assets/images/favicon.ico">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Admin Dashboard</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/userList">Users</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/companyList">Companies</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/jobList">Jobs</a>
				</li>
				<li class="nav-item">
					<form action="/logout" method="get">
						<button type="submit" class="btn btn-link nav-link">Logout</button>
					</form>
				</li>
			</ul>
		</div>
	</nav>

	<section>
		<c:if test="${not empty jobs}">
			<form action="/updateJobbyadmin" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Company Name</th>
							<th>Job Title</th>
							<th>Job Description</th>
							<th>Job Role</th>
							<th>Experience</th>
							<th>Location</th>
							<th>Price</th>
							<th>Job Type</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="job" items="${jobs}" varStatus="loop">
							<tr>
								<td>${job.company.name}</td>
								<td><input type="hidden" name="jobId_${job.id}"
									value="${job.id}" /> <input type="text" class="form-control"
									name="jobTitle_${job.id}" value="${job.jobTitle}" /></td>
								<td><input type="text" class="form-control"
									name="jobDescription_${job.id}" value="${job.jobDescription}" />
								</td>
								<td><input type="text" class="form-control"
									name="jobRole_${job.id}" value="${job.jobRole}" /></td>
								<td><input type="text" class="form-control"
									name="experience_${job.id}" value="${job.experience}" /></td>
								<td><input type="text" class="form-control"
									name="location_${job.id}" value="${job.location}" /></td>
								<td><input type="text" class="form-control"
									name="price_${job.id}" value="${job.price}" /></td>
								<td><input type="text" class="form-control"
									name="jobType_${job.id}" value="${job.jobType}" /></td>
								<td><input type="submit" class="btn btn-primary"
									value="Update" /></td>
								<td>
									<form action="/deleteJobbyadmin" method="post">
										<input type="hidden" name="jobId" value="${job.id}" />
										<button type="submit" class="btn btn-danger">Delete</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</c:if>

	</section>

</body>
</html>

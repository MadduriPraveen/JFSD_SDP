<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    // Check if the session has timed out or if the user clicked logout
    Boolean sessionExpired = (Boolean) request.getAttribute("sessionExpired");
    Boolean userLoggedOut = (Boolean) request.getAttribute("userLoggedOut");

    if (sessionExpired != null && sessionExpired || userLoggedOut != null && userLoggedOut) {
        response.sendRedirect("login.jsp"); // Redirect to login page or any other page as needed
    } else {
        // Continue with your existing JSP code
%>

<!DOCTYPE html>
<html>
<head>
<title>Company Dashboard</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	padding-top: 56px;
	/* Add 56px to the top of the body to account for the fixed navbar */
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">Company Dashboard</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="/companyprofile">Edit
						Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="/companylogout">Logout</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container mt-5">
		<h1>Company Dashboard</h1>

		<%
        com.klef.jfsd.springboot.model.Company company = (com.klef.jfsd.springboot.model.Company) request.getAttribute("company");
        java.util.List<com.klef.jfsd.springboot.model.Job> jobs = (java.util.List<com.klef.jfsd.springboot.model.Job>) request.getAttribute("jobs");
    %>
		<%
        Integer companyId = (Integer) session.getAttribute("cid");
    %>

		<div class="mb-4">
			Name:
			<%= company.getName() %><br> Email:
			<%= company.getEmail() %><br> About:
			<%= company.getAbout() %><br> Contact:
			<%= company.getContact() %><br> <a href="/companyprofile">
				Edit Profile</a>
		</div>

		<h2>All Jobs Added by the Company</h2>

		<section>
			<c:if test="${not empty jobs}">
				<form action="/updateJob" method="post">
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
										<form action="/deleteJob" method="post">
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

		<h2>Add New Job</h2>
		<form action="/addJob" method="post">
			<table class="table">

				<tr>

					<td>Job Title:</td>

					<td><input type="text" name="jobTitle" required></td>

				</tr>

				<tr>

					<td>Description:</td>

					<td><input type="text" name="jobDescription" required></td>

				</tr>

				<tr>

					<td>Role:</td>

					<td><input type="text" name="jobRole" required></td>

				</tr>

				<tr>

					<td>Experience:</td>

					<td><input type="text" name="experience" required></td>

				</tr>

				<tr>

					<td>Location:</td>

					<td><input type="text" name="location" required></td>

				</tr>

				<tr>

					<td>Price:</td>

					<td><input type="number" step="0.01" name="price" required></td>

				</tr>

				<tr>

					<td>Job Type:</td>

					<td><input type="text" name="jobType" required></td>

				</tr>

				<tr>

					<td colspan="2"><input type="hidden" name="companyId"
						value="<%= companyId %>"> <input type="submit"
						class="btn btn-success" value="Add Job"></td>

				</tr>

			</table>
		</form>
	</div>

</body>
</html>

<%
    } // Close the else block
%>

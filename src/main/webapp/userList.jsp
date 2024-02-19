<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>User List</title>
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
		<c:if test="${not empty users}">
			<form action="/updateUser" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Username</th>
							<th>Name</th>
							<th>Date of Birth</th>
							<th>City</th>
							<th>Email</th>
							<th>Password</th>
							<th>Contact Number</th>
							<th>About</th>
							<th>Languages</th>
							<th>Education</th>
							<th>Skills</th>
							<th>Update</th>
							<th>Delete</th>
							<!-- Added the Delete header -->
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${users}" varStatus="loop">
							<tr>
								<td><input type="text" class="form-control"
									name="username_${loop.index}" value="${user.username}" /></td>
								<td><input type="text" class="form-control"
									name="name_${loop.index}" value="${user.name}" /></td>
								<td><input type="date" class="form-control"
									name="dob_${loop.index}" value="${user.dateofbirth}" /></td>
								<td><input type="text" class="form-control"
									name="city_${loop.index}" value="${user.city}" /></td>
								<td><input type="email" class="form-control"
									name="email_${loop.index}" value="${user.email}" /></td>
								<td><input type="password" class="form-control"
									name="pwd_${loop.index}" value="${user.password}" /></td>
								<td><input type="text" class="form-control"
									name="contact_${loop.index}" value="${user.contact}" /></td>
								<td><input type="text" class="form-control"
									name="about_${loop.index}" value="${user.about}" /></td>
								<td><input type="text" class="form-control"
									name="languages_${loop.index}" value="${user.languages}" /></td>
								<td><input type="text" class="form-control"
									name="education_${loop.index}" value="${user.education}" /></td>
								<td><input type="text" class="form-control"
									name="skills_${loop.index}" value="${user.skills}" /></td>
								<td><input type="hidden" name="userId_${loop.index}"
									value="${user.id}" /> <input type="submit"
									class="btn btn-primary" value="Update" /></td>
								<td>
									<form action="/deleteUser" method="post">
										<input type="hidden" name="userId" value="${user.id}" />
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

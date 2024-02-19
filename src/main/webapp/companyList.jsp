<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Company List</title>
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
				<li class="nav-item">
					<form action="/logout" method="get">
						<button type="submit" class="btn btn-link nav-link">Logout</button>
					</form>
				</li>
			</ul>
		</div>
	</nav>

	<section>
		<c:if test="${not empty companies}">
			<form action="/updateCompany" method="post">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Password</th>
							<th>About</th>
							<th>Contact</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="company" items="${companies}" varStatus="loop">
							<tr>
								<td><input type="text" class="form-control"
									name="name_${loop.index}" value="${company.name}" /></td>
								<td><input type="text" class="form-control"
									name="email_${loop.index}" value="${company.email}" /></td>
								<td><input type="password" class="form-control"
									name="password_${loop.index}" value="${company.password}" /></td>
								<td><input type="text" class="form-control"
									name="about_${loop.index}" value="${company.about}" /></td>
								<td><input type="text" class="form-control"
									name="contact_${loop.index}" value="${company.contact}" /></td>
								<td><input type="hidden" name="companyId_${loop.index}"
									value="${company.id}" /> <input type="submit"
									class="btn btn-primary" value="Update" /></td>
								<td>
									<form action="/deleteCompany" method="post">
										<input type="hidden" name="companyId" value="${company.id}" />
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Company Profile</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="bg-light">

	<div class="container py-4">
		<h1 class="mb-4">Company Profile</h1>

		<div class="card">
			<div class="card-body">
				<%
                com.klef.jfsd.springboot.model.Company company = (com.klef.jfsd.springboot.model.Company) request.getAttribute("company");
            %>
				<form action="updateCompanyData" method="post">
					<div class="form-group">
						<label for="name">Name:</label> <input type="text"
							class="form-control" id="name" name="name"
							value="<%= company.getName() %>" required>
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="email"
							value="<%= company.getEmail() %>" required>
					</div>
					<div class="form-group">
						<label for="about">About:</label>
						<textarea class="form-control" id="about" name="about" rows="4"><%= company.getAbout() %></textarea>
					</div>
					<div class="form-group">
						<label for="contact">Contact:</label> <input type="text"
							class="form-control" id="contact" name="contact"
							value="<%= company.getContact() %>" required>
					</div>
					<button type="submit" class="btn btn-primary">Update</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>

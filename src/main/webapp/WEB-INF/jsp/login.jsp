<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login | Rocker Admin</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
	<style>
		body {
			background: #f3f4f6;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
		}
		.card {
			background: #ffffff;
			border-radius: 12px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			max-width: 400px;
			width: 100%;
			padding: 30px;
		}
		.input-group-text {
			cursor: pointer;
		}
	</style>
</head>
<body>

	<div class="card">
		<h4 class="text-center mb-4">Login</h4>

		<!-- ✅ Success message if available -->
		<c:if test="${not empty success}">
			<div class="alert alert-success text-center">${success}</div>
		</c:if>

		<form method="post" action="/LoginUser">
			<div class="mb-3">
				<label for="username" class="form-label">Username</label>
				<input type="text" class="form-control" name="username" id="username" placeholder="Enter username" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label>
				<div class="input-group" id="show_hide_password">
					<input type="password" class="form-control" name="password" id="password" placeholder="Enter password" required>
					<span class="input-group-text"><i class="bx bx-hide"></i></span>
				</div>
			</div>
			<div class="d-grid mb-3">
				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</form>

		<div class="text-center">
			<p>Don't have an account? <a href="register-form">Register here</a></p>
		</div>
	</div>

	<script>
		// Show/hide password logic
		document.querySelector('#show_hide_password .input-group-text').addEventListener('click', function () {
			let passwordInput = document.getElementById('password');
			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				this.innerHTML = '<i class="bx bx-show"></i>';
			} else {
				passwordInput.type = "password";
				this.innerHTML = '<i class="bx bx-hide"></i>';
			}
		});
	</script>

</body>
</html>

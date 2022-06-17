<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Registration form A</title>
		<link rel="stylesheet" href="./css/style.css">
	</head>

	<body>
		<div class="wrapper">
			<h1>Registration Form A</h1>
			<div class="error">
				<% 
				String  s1  = (String) session.getAttribute("error");        
				%>
				<% if(s1 != null) { %>
			    	<div class="error" style="color : red"><%= s1 %></div>
			    <% } %>

			</div>
			<form method="post" action="${pageContext.request.contextPath}/RegistrationController">
				<div class="form-group">
					<label for="user_id">User Id</label>
					<input type="text" name="user_id" id="user_id" required>
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" name="password" id="password" required>
				</div>
				<div class="form-group">
					<label for="password1">Password (repeat)</label>
					<input type="password" name="password1" id="password1" required>
				</div>
				<div class="form-group">
					<label for="first_name">First Name</label>
					<input type="text" name="first_name" id="first_name" required>
				</div>
				<div class="form-group">
					<label for="last_name">Last Name</label>
					<input type="text" name="last_name" id="last_name" required>
				</div>
				<div class="form-group with-ssn">
					<label for="ssn">Social Security Number</label>
					<div class="split-input" id="ssn">
						<input type="text" name="ssn1" id="ssn1" maxlength="3" required> -
						<input type="text" name="ssn2" id="ssn2" maxlength="2" required> -
						<input type="text" name="ssn3" id="ssn3" maxlength="4" required>
					</div>
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<input type="email" name="email" id="email" required>
				</div>

				<div class="form-group">
					<input type="submit" value="continue">					
				</div>

			</form>
		</div>
	</body>

	</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>User information</title>
</head>
<body>
	<h1>Find user</h1>
	<form action="Controller" method="get">
		<p>Surname:</p>
		<input type="text" name="surname" value="" pattern="[A-Za-z]{1,}">
		<br>
		<p>Name:</p>
		<input type="text" name="name" value="" pattern="[A-Za-z]{0,}">
		<br><br>
		<input type="submit" value="find">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>User information</h1>
	<c:choose>
	<c:when test="${not empty requestScope.user}">
	<table border="1">
		<tr>
			<td>Name</td>
			<td>Surname</td>
			<td>Phone number</td>
			<td>e-mail</td>
		</tr>
		
		<c:forEach items="${requestScope.user}" var="user">
   		<tr>
			<td><c:out value="${user.name}"></c:out></td>
			<td><c:out value="${user.surname}"></c:out></td>
			<td><c:out value="${user.phone}"></c:out></td>
			<td><c:out value="${user.email}"></c:out></td>
		</tr>
		</c:forEach>
	</table>
	</c:when>
	<c:otherwise>
		<p>User not found</p>
	</c:otherwise>
	</c:choose>
	<br>
	<a href=".\index.jsp">Find another user</a>
</body>
</html>
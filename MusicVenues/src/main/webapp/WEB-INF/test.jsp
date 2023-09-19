<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta >
<title>MusicVenue</title>
</head>
<body>


<div>


	<h2>MusicVenue</h2>

	<c:choose>
		<c:when test="${empty musicvenuedb}">
			<h1>Music Venue Not Found.</h1>
		</c:when>
		<c:otherwise>
			<div>
			<h5>${musicvenue.id}(${musicvenue.name}</h5>
			</div>
			</c:otherwise>
	</c:choose>
	</div>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicVenue Details</title>
<jsp:include page="bootstrapHead.jsp" />


</head>
<body>
	<jsp:include page="navbar.jsp" />

	<divclass="container">


	<h2>MusicVenue</h2>

	<c:choose>
		<c:when test="${empty musicvenue}">
			<h1>Venue Not Found.</h1>
		</c:when>
		<c:otherwise>
			<div>
				<h5>${musicvenue.id}(${musicvenue.name})</h5>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
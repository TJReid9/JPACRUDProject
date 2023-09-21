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

				<h5 style="margin-top: 30px; font-size: 40px">${musicvenue.id}(${musicvenue.name})</h5>

				
				<h1>Form for Updating Venue</h1>

				<form action="updateVenue.do" method="get">
					<span>Name: </span> <input type="text" name="name"
						value="${musicvenue.name}"> <input type="hidden" name="id"
						value="${musicvenue.id}"> <input type="submit"
						value="Update Venue">
					
					<br>
				</form>


				<form action="deleteVenue.do" method="post">
					<input type="hidden" name="id" value="${musicvenue.id}"> <input
						type="submit" value="Delete Venue">
				</form>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
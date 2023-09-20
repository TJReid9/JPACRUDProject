<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicVenues</title>
<jsp:include page="bootstrapHead.jsp" />

</head>
<body>

	<jsp:include page="navbar.jsp" />

	<div class="container">

		<h1>Colorado Music Venues</h1>

		<form action="getVenue.do" method="GET">
			MusicVenue ID: <input type="text" name="id" /> <input type="submit"
				value="Show Venue" />
		</form>

		<ul>

			<c:forEach var="musicvenue" items="${musicvenues}">
				<li><a href="getVenue.do?id=${musicvenue.id}">${musicvenue.name}</a>
				</li>



			</c:forEach>
		</ul>



	</div>

</body>
</html>
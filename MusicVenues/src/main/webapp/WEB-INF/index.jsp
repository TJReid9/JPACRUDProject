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

		<h1 style="margin-top: 25px; margin-bottom: 25px">Colorado Music
			Venues</h1>

		<form action=""></form>

		<form action="getVenue.do" method="GET" style="margin: 10px 0px">
			Venue ID: <input type="text" name="id" /> <input type="submit"
				value="Show Venue" />
		</form>

		<table class="table table-striped table-hover">

			<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Name</th>
				</tr>
			</thead>

			<tbody>

				<c:forEach var="musicvenue" items="${musicvenues}">
					<tr>
						<td>${musicvenue.id}</td>
						<td><a href="getVenue.do?id=${musicvenue.id}">${musicvenue.name} <br>${musicvenue.location}</a></td>
					</tr>

				</c:forEach>
			</tbody>

		</table>
		<h1>Add Venue</h1>

		<form action="addVenue.do" method="post">
			<span>Name:</span> <input type="text" name="name">
			<button>Add</button>
		</form>
		<br>

	</div>

	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>
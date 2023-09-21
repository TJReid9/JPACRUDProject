<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete MusicVenue</title>
</head>
<body>

	<h1>Form to Delete Venue</h1>
	
	<form action="deleteVenue.do" method="get">
		<span>Name: </span>
		<input type="text" name="deleteVenue" value="${musicvenue.id}">
		<br>
		</form>
		<br>
		<br>
		<a href="/">Back to Home</a>

</body>
</html>
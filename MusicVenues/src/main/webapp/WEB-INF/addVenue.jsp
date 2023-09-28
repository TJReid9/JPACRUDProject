<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add MusicVenue</title>
</head>
<body>
		<h1>Venue Added!</h1>
	
	<label>Location:</label>
	<input type="text" name="venueLocation" value="${musicvenue.location}"> 
	<br>
	<br>
	<label>Description:</label>
	<input type="text" name="venueDescription" value="${musicvenue.description}"> 
	
	<br>
	
	<br>
	<br>
	<a href="/">Back to Home</a>

</body>
</html>
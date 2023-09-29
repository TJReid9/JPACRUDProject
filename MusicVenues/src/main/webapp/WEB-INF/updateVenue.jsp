<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update MusicVenue</title>
</head>
<body>
	>
	<h3>Update Venue</h3>
	<form action="updateVenue.do" method="get">
		<label for="name">Name:</label>
     			 <input type="text" name="name" value="${musicvenue.name}"> 
     			 <label for="location">Location:</label>
    			  <input type="text" name="location" value="${musicvenue.location}"> 
    			  <label for="description">Description:</label>
    			  <input type="text" name="description" value="${musicvenue.description}">
     			 <input type="submit" value="Update Venue">
					<br>
					</form>
	

</body>
</html>
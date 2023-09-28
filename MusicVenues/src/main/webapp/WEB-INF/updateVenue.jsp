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
		<span>Name: </span> 
		    <input type="hidden" name="id" value="${musicvenue.id}">
            <input type="text" name="name" value="${musicvenue.name}"> 
            <input type="text" name="location" value="${musicvenue.location}"> 
            <input type="text" name="description" value="${musicvenue.description}"> 
            
            <input type="submit" value="Update Venue"> <br>
	</form>
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music Venue</title>
</head>
<body>

<h1>JPA Music Venues</h1>

<form action="getVenue.do" method="GET">
  Venue ID: <input type="text" name="id" />
  <input type="submit" value="Show Venue" />
</form>

<ul>
<c:forEach var="musicvenue" items="${musicvenuedb}">
	<li>${musicvenue.title}</li>
</c:forEach>


</ul>

</body>
</html>
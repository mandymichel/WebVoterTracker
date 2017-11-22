
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" 
    integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<title>List of Voters</title>
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list-style.css">
</head>
<body>
<div class="container">
		<div id="header">
			<h2>Supporter List</h2>
		</div>
	</div>
	<br>
		<div class="container">
		<div id="content">
		<!-- Add button below -->
		<input type="button" class="btn btn-outline-success" value="Join the List"
			onclick="window.location.href='showFormForAdd'; return false;"/>
			<table class="table">
 			<thead class="thead-light">	
 				<tr>				
 					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Comments</th>
					<th>Action</th>
					</tr>
				</thead>
				<!-- Loop over and print the voters -->
				<c:forEach var="tempVoter" items="${voters}">
				
				<!-- Construct an update link with voter id -->
				<c:url var="updateLink" value="/voter/showFormForUpdate">
					<c:param name="voterId" value="${tempVoter.id}" />
				</c:url>
				
				<!-- Construct a delete link with voter id -->
				<c:url var="deleteLink" value="/voter/delete">
					<c:param name="voterId" value="${tempVoter.id}" />
				</c:url>
					<tr>
						<td>${tempVoter.firstName}</td>
						<td>${tempVoter.lastName}</td>
						<td>${tempVoter.email}</td>
						<td>${tempVoter.comments}</td>
						<td><a href="${updateLink}">Update</a>
						|<a href="${deleteLink}" 
						onclick="if (!(confirm('Are you sure you want to delete this voter?')))
						return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</div>
</body>
</html>
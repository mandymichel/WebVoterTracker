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
					</tr>
				</thead>
				<!-- Loop over and print the voters -->
				<c:forEach var="tempVoter" items="${voters}">
					<tr>
						<td>${tempVoter.firstName}</td>
						<td>${tempVoter.lastName}</td>
						<td>${tempVoter.email}</td>
						<td>${tempVoter.comments}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</div>
</body>
</html>
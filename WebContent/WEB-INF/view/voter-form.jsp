<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Save Voter</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
</head>
<body>
	<div id="container">
		<h3>To volunteer to help with Jason's campaign, please fill out this simple form.</h3>
		<br>
		<!-- Sends info from forms bound together as model attribute voter to the saveVoter method in the 
		voter controller that is annotated with @PostMapping -->
		<form:form action="saveVoter" modelAttribute="voter" method="GET">
		<!-- Need to associate this data with a given voter, otherwise, update won't update a voter
		, just create a new one -->
			<form:hidden path="id" />
			<table class="table table-hover">
				<tbody>
					<tr>
						<td><label>First name: </label></td>
						<td><form:input path="firstName" /></td>
						<td><label>Last name: </label></td>
						<td><form:input path="lastName" /></td>
						<td><label>Email: </label></td>
						<td><form:input path="email" /></td>
						<td><label>Comments: </label></td>
						<td><form:input path="comments" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Save" class="btn btn-success"/></td>
						<td>We will never give or sell your information to anyone else!</td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<div style="clear; both;"></div>
		<p><a href="${pageContext.request.contextPath}/voter/list" class="btn btn-link">See Jason's other supporters</a></p>
	</div>
</body>
</html>
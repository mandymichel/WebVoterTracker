<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en-us" ng-app="myApp">
<head>
<title>Vote on April 14th!</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="UTF-8">

<!-- load bootstrap and fontawesome via CDN -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/jquery-1.7.2.min.js"><\/script>')
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<style>
html, body, input, select, textarea {
	font-size: 1.05em;
}
</style>

<!-- load angular via CDN -->
<script src="//code.angularjs.org/1.3.0-rc.1/angular.min.js"></script>
<script src="//code.angularjs.org/1.3.0-rc.1/angular-route.min.js"></script>
<script src="resources/js/app.js"></script>
</head>
<body>

	<header>
		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="/">Jason Mayer for Brentwood
						School Board</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#/"><i></i> Biography</a></li>

					<li><a href="#/second"><i></i> Philosophy</a></li>

					<li><a href="#/third"><i></i> Work Experience</a></li>

				</ul>
			</div>
		</nav>
	</header>
	<div class="container bg-light">
		<div class="row">
			<blockquote class="imgur-embed-pub" lang="en" data-id="Q91zKwE">
				<a href="//imgur.com/Q91zKwE">View post on imgur.com</a>
			</blockquote>
			<script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

			<blockquote class="imgur-embed-pub" lang="en" data-id="vclesfs">
				<a href="//imgur.com/vclesfs">View post on imgur.com</a>
			</blockquote>
			<script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>

		</div>
		<div class="container bg-light">

			<div ng-view>

			<hr />
			
			</div>
			<p><a href="${pageContext.request.contextPath}/voter/showFormForAdd" class="btn btn-success btn-lg btn-block">Sign Up!</a></p>			
		</div>

	</div>
</body>
</html>
<!-- If the angular page above doesn't work, go back to redirect below in keeping with Spring tutorial -->

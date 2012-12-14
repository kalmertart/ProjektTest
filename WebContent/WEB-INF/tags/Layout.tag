<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Team 11 | Border project</title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="#">Piirivalve</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><a href="<c:url value="/guard/view"/>">Piirivalvur</a></li>
						<li><a href="<c:url value="/borderStation/view"/>">Piiripunkt</a></li>
						<li><a href="<c:url value="/occupation/view"/>">Amet</a></li>
						<li><a href="<c:url value="/occupationInBorderStation/view"/>">Amet piiripunktis</a></li>
						<li><a href="<c:url value="/guardInBorderStation/view"/>">Piirivalvur piiripunktis</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<jsp:doBody />
	</div>
</body>
</html>
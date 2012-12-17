<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title><spring:message code="main.title"/></title>
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="./css/myCss.css" rel="stylesheet">
<link href="../css/myCss.css" rel="stylesheet">
<link href="./css/datepicker.css" rel="stylesheet">
<link href="../css/datepicker.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" /> -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script> -->
<script type="text/javascript" src="./js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="./js/script.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="<c:url value="/"/>"><spring:message code="borderservice"/></a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><a href="<c:url value="/guard/view"/>"><spring:message code="guard.singular"/></a></li>
						<li><a href="<c:url value="/borderStation/view"/>"><spring:message code="borderStation.singular"/></a></li>
						<li><a href="<c:url value="/occupation/view"/>"><spring:message code="occupation.singular"/></a></li>
						<li><a href="<c:url value="/occupationInBorderStation/view"/>"><spring:message code="occupationInBorderStation.singular"/></a></li>
						<li><a href="<c:url value="/guardInBorderStation/view"/>"><spring:message code="guardInBorderStation.singular"/></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<jsp:doBody />
	</div>
	<footer class="footer">
		<div class="container">
			<hr />
			<p>
				<spring:message code="home.footer" />
			</p>
		</div>
	</footer>
</body>
</html>
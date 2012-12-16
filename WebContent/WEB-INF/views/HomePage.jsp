<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h1>
			<spring:message code="home.heading" />
		</h1>
	</div>
	
	<p><spring:message code="home.introduction" /></p>
	<p><spring:message code="home.team" /></p>
</pr:Layout>
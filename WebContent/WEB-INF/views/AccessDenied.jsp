<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h1>
			<spring:message code="accessDenied.header" />
		</h1>
	</div>
	
	<p><spring:message code="accessDenied.text" /></p>
	
</pr:Layout>
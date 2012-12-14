<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<pr:Layout>
	<div class="hero-unit">
		<h1><spring:message code="guard.update.heading"/></h1>
	</div>
	<form:form action="update" method="POST" modelAttribute="guard">
		<table>
			<form:hidden path="id" />
						<tr>
				<td>
				<form:label path="firstName"><spring:message code="guard.field.firstName"/></form:label></td>
				<td><form:input path="firstName" /></td>
				<td><form:errors path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName"><spring:message code="guard.field.lastName"/></form:label></td>
				<td><form:input path="lastName" /></td>
				<td><form:errors path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="address"><spring:message code="guard.field.address"/></form:label></td>
				<td><form:input path="address" /></td>
				<td><form:errors path="address" /></td>
			</tr>
			<tr>
				<td><form:label path="email"><spring:message code="guard.field.email"/></form:label></td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="socialSecurityNumber"><spring:message code="guard.field.socialSecurityNumber"/></form:label></td>
				<td><form:input path="socialSecurityNumber" /></td>
				<td><form:errors path="socialSecurityNumber" /></td>
			</tr>
			<tr>
				<td><form:label path="soldiersCode"><spring:message code="guard.field.soldiersCode"/></form:label></td>
				<td><form:input path="soldiersCode" /></td>
				<td><form:errors path="soldiersCode" /></td>
			</tr>
			<tr>
				<td><form:label path="gender"><spring:message code="guard.field.gender"/></form:label></td>
				<td><form:input path="gender" /></td>
				<td><form:errors path="gender" /></td>
			</tr>
			<tr>
				<td><form:label path="phoneNumber"><spring:message code="guard.field.phoneNumber"/></form:label></td>
				<td><form:input path="phoneNumber" /></td>
				<td><form:errors path="phoneNumber" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="<spring:message code="entity.save"/>"
					class="btn btn-primary btn-larg" /></td>
			</tr>
		</table>
	</form:form>

</pr:Layout>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<pr:Layout>
	<div class="hero-unit">
		<h1>Update Guard</h1>
	</div>
	<form:form action="update" method="POST" modelAttribute="guard">
		<table>
			<form:hidden path="id" />
			<tr>
				<td><form:label path="firstName">Eesnimi</form:label></td>
				<td><form:input path="firstName" /></td>
				<td><form:errors path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Perekonnanimi</form:label></td>
				<td><form:input path="lastName" /></td>
				<td><form:errors path="lastName" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Aadress</form:label></td>
				<td><form:input path="address" /></td>
				<td><form:errors path="address" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" /></td>
				<td><form:errors path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="socialSecurityNumber">Isikukood</form:label></td>
				<td><form:input path="socialSecurityNumber" /></td>
				<td><form:errors path="socialSecurityNumber" /></td>
			</tr>
			<tr>
				<td><form:label path="soldiersCode">Sõdurikood</form:label></td>
				<td><form:input path="soldiersCode" /></td>
				<td><form:errors path="soldiersCode" /></td>
			</tr>
			<tr>
				<td><form:label path="gender">Sugu</form:label></td>
				<td><form:input path="gender" /></td>
				<td><form:errors path="gender" /></td>
			</tr>
			<tr>
				<td><form:label path="phoneNumber">telefon</form:label></td>
				<td><form:input path="phoneNumber" /></td>
				<td><form:errors path="phoneNumber" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update Guard"
					class="btn btn-primary btn-larg" /></td>
			</tr>
		</table>
	</form:form>

</pr:Layout>
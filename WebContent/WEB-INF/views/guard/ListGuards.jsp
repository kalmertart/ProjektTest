<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<pr:Layout>
	<div class="hero-unit">
		<h1>Guards</h1>
	</div>
	<table>
		<tr>
			<th>Id</th>
			<th>Eesnimi</th>
			<th>Perekonnanimi</th>
		</tr>
		<c:forEach items="${guards}" var="guard">
			<tr>
				<td>${guard.id}</td>
				<td>${guard.firstName}</td>
				<td>${guard.lastName}</td>
			</tr>
		</c:forEach>
	</table>
</pr:Layout>
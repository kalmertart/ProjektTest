<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h1><spring:message code="guard.plural" /></h1>
	</div>
	<div id="hor-minimalist-b">
		<table>
			<tr>
				<th><h4><spring:message code="entity.field.id" /></h4></th>
				<th><h4><spring:message code="guard.field.socialSecurityNumber" /></h4></th>
				<th><h4><spring:message code="guard.field.soldiersCode" /></h4></th>
				<th><h4><spring:message code="guard.field.firstName" /></h4></th>
				<th><h4><spring:message code="guard.field.lastName" /></h4></th>
			</tr>
			<c:forEach items="${guards}" var="guard">
				<tr>
					<td>${guard.id}</td>
					<td>${guard.socialSecurityNumber}</td>
					<td>${guard.soldiersCode}</td>
					<td>${guard.firstName}</td>
					<td>${guard.lastName}</td>
					<td>
						<a href="<c:url value="/guard/update?id=${guard.id}" ></c:url>">
							<spring:message code="entity.button.update" />
						</a>
					</td>
					<td>
						<a href="<c:url value="/guard/delete?id=${guard.id}"/>">
							<spring:message code="entity.button.delete" />
						</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-inverse" href="<c:url value="/guard/add"/>"><spring:message code="entity.add.new" /></a>
	</div>
</pr:Layout>
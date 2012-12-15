<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h1><spring:message code="guard.plural" /></h1>
	</div>
	<div id="hor-minimalist-b">
		<table >
			<tr>
				<th><h4><spring:message code="entity.field.id" /></h4></th>
				<th><h4><spring:message code="borderStation.field.code" /></h4></th>
				<th><h4><spring:message code="borderStation.field.name" /></h4></th>
				<th><h4><spring:message code="borderStation.field.latitude" /></h4></th>
				<th><h4><spring:message code="borderStation.field.longitude" /></h4></th>
			</tr>
			<c:forEach items="${borderStations}" var="borderStation">
				<tr>
					<td>${borderStation.id}</td>
					<td>${borderStation.code}</td>
					<td>${borderStation.name}</td>
					<td>${borderStation.latitude}</td>
					<td>${borderStation.longitude}</td>
					<td>
						<a href="<c:url value="/borderStation/update?id=${borderStation.id}" ></c:url>">
							<spring:message code="entity.button.update" />
						</a>
					</td>
					<td>
						<a href="<c:url value="/borderStation/delete?id=${borderStation.id}"/>">
							<spring:message code="entity.button.delete" />
						</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-inverse" href="<c:url value="/borderStation/add"/>"><spring:message code="entity.add.new" /></a>
	</div>
</pr:Layout>
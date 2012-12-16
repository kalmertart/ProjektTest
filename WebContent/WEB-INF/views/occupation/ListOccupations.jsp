<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h1><spring:message code="occupation.plural" /></h1>
	</div>
	<div id="hor-minimalist-b">
		<table>
			<tr>
				<th><h4><spring:message code="entity.field.id" /></h4></th>
				<th><h4><spring:message code="occupation.field.iscoCode" /></h4></th>
				<th><h4><spring:message code="occupation.field.name" /></h4></th>
			</tr>
			<c:forEach items="${occupations}" var="occupation">
				<tr>
					<td>${occupation.id}</td>
					<td>${occupation.iscoCode}</td>
					<td>${occupation.name}</td>
					<td>
						<a href="<c:url value="/occupation/update?id=${occupation.id}" ></c:url>">
							<spring:message code="entity.button.update" />
						</a>
					</td>
					<td>
						<a href="<c:url value="/occupation/delete?id=${occupation.id}"/>">
							<spring:message code="entity.button.delete" />
						</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-inverse" href="<c:url value="/occupation/add"/>"><spring:message code="entity.add.new" /></a>
	</div>
</pr:Layout>
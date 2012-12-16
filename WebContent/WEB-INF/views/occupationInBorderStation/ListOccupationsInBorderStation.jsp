<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h3>
			<spring:message code="occupationInBorderStation.plural" />
		</h3>
		<div>
			<table class="viewpanel">
				<tr>
					<th><h4><spring:message code="entity.field.id" /></h4></th>
					<th><h4><spring:message code="occupationInBorderStation.field.occupation" /></h4></th>
					<th><h4><spring:message code="occupationInBorderStation.field.borderStation" /></h4></th>
				</tr>
				<c:forEach items="${occupationInBorderStation}" var="occupationInBorderStation">
					<tr>
						<td>${occupationInBorderStation.id}</td>
						<td>${occupationInBorderStation.borderStation.name}</td>
						<td>${occupationInBorderStation.occupation.name}</td>
						<td>
							<a href="<c:url value="/occupationInBorderStation/update?id=${occupationInBorderStation.id}" ></c:url>">
								<spring:message code="entity.button.update" />
							</a>
						</td>
						<td>
							<a href="<c:url value="/occupationInBorderStation/delete?id=${occupationInBorderStation.id}"/>">
								<spring:message code="entity.button.delete" />
							</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<a class="btn btn-inverse" href="<c:url value="/occupationInBorderStation/add"/>"><spring:message code="entity.add.new" /></a>
		</div>
	</div>
</pr:Layout>
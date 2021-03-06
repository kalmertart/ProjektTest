<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<pr:Layout>
	<div class="hero-unit">
		<h3>
			<spring:message code="occupation.update.heading" />
		</h3>
	</div>
	<div id="formdiv">
		<form:form action="update" method="POST" modelAttribute="occupation">
			<form:hidden path="id" />
			<div>
				<c:if test="${errors}">
					<div id="errorspanel">
						<table>
							<c:forEach items="${errorList}" var="error">
								<tr>
									<td><spring:message message="${error}" /></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</c:if>
				<div id="leftpanel">
					<table>
						<tr>
							<td><form:label path="iscoCode">
									<spring:message code="occupation.field.iscoCode" />
								</form:label></td>
						</tr>
						<tr>
							<td><form:input path="iscoCode" /></td>
						</tr>
						<tr>
							<td><form:label path="name">
									<spring:message code="occupation.field.name" />
								</form:label></td>
						</tr>
						<tr>
							<td><form:input path="name" /></td>
						</tr>
						<tr>
							<td>
								<input type="submit" value="<spring:message code="entity.button.save" />" class="btn btn-success " /> 
							</td>
						</tr>
					</table>
				</div>
				<div class="rightpanel">
					<table>
						<tr>
							<td><form:label path="comment"><spring:message code="entity.field.comment" /></form:label></td>
						</tr>
						<tr>
							<td><form:textarea path="comment" name="comments" cols="100" class="occupationComment"
									rows="3"></form:textarea></td>
						</tr>
						<tr>
						<td>
						<a class="btn btn-default" href="<c:url value="/occupation/view"/>"><spring:message code="entity.button.cancel" /></a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<a class="btn btn-default" href="<c:url value="/occupation/delete?id=${occupation.id}"/>"><spring:message code="entity.button.delete" /></a>
						</sec:authorize>
						</td>
						</tr>
					</table>
				</div>
			</div>
		</form:form>
	</div>
</pr:Layout>
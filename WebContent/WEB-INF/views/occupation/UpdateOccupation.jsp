<%@ taglib tagdir="/WEB-INF/tags" prefix="pr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<pr:Layout>
	<div class="hero-unit">
		<h1>
			<spring:message code="occupation.update.heading" />
		</h1>
	</div>
	<div id="formdiv">
		<form:form action="update" method="POST" modelAttribute="occupation">
			<form:hidden path="id" />
			<div>
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
							<td><form:errors path="iscoCode" /></td>
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
							<td><form:errors path="name" /></td>
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
							<td><form:errors path="comment" /></td>
						</tr>
						<tr>
						<td>
						<a class="btn btn-default" href="<c:url value="/occupation/view"/>"><spring:message code="entity.button.cancel" /></a>
						<a class="btn btn-default" href="<c:url value="/occupation/delete?id=${occupation.id}"/>"><spring:message code="entity.button.delete" /></a>
						</td>
						</tr>
					</table>
				</div>
			</div>
		</form:form>
	</div>
</pr:Layout>
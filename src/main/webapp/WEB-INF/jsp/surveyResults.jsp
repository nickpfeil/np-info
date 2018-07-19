<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Survey Results" />
<%@include file="common/header.jspf"%>
<div class="surveyResultsPage">
	<div class="surveyDetails">
		<c:forEach var="park" items="${parks}">
			<div class="indPark">
				<div class="parkName">
					<c:out value="${park.state}" />
				</div>
				<div class="parkDescription">
					<c:out value=" Recent Comments: ${park.parkDescription}"></c:out>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<%@include file="common/footer.jspf"%>
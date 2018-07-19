<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Survey Results" />
<%@include file="common/header.jspf"%>
<div class="surveyResultsPage">
	<ol>
		<c:forEach var="park" items="${parks}">
			<li><div class="surveyDetails">
					<div class="parkImage">
						<c:url var="indParksDeetsUrl"
							value="/indParksDeets?parkCode=${park.parkCode}" />
						<a href="${indParksDeetsUrl}"> <c:url var="parkImgUrl"
								value="/img/parks/${park.parkCode}.jpg" /> <img
							src="${parkImgUrl}" />
						</a>
					</div>
				</div>
				<div class="descriptions">
					<div class="indPark">
						<div class="parkName">
							<c:out value="${park.state}" />
						</div>
						<div class="parkDescription">
							Park Description
							<c:out value="${park.parkDescription}"></c:out>
						</div>
					</div>
				</div></li>
		</c:forEach>
	</ol>
</div>
<%@include file="common/footer.jspf"%>
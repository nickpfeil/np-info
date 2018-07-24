<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Survey Results" />
<%@include file="common/header.jspf"%>
<div class="surveyResultsPage">
	<c:set var="counter" value="1"/>
	<br><h1 class="surveyHeading">Favorite Parks</h1><hr>
		<c:forEach var="park" items="${parks}">
			<div class="surveyDetails">
					<div class="parkImage">
						<c:url var="indParksDeetsUrl"
							value="/indParksDeets?parkCode=${park.parkCode}" />
						<a href="${indParksDeetsUrl}"> <c:url var="parkImgUrl"
								value="/img/parks/${park.parkCode}.jpg" /> <img
							src="${parkImgUrl}" />
						</a>
					</div>
			
				<div class="descriptions">
					<div class="indPark">
						<div class="parkName">
							<c:out value="${counter}. "/>
							<c:out value="${park.parkName}" />
						</div>
						<div class="parkDescription">
							<c:out value="Park Description: "></c:out>
							<c:out value="${park.parkDescription}"></c:out>
						</div>
					</div>
				</div>
				</div>
			<c:set var="counter" value="${counter+1}"/>
		</c:forEach>

</div>
<%@include file="common/footer.jspf"%>
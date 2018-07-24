<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="National Parks" />
<%@include file="common/header.jspf"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<div class="DetailPage">

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<c:set var="counter" value="1" />
		<div class="carousel-inner">
			<c:forEach var="park" items="${parks}">
				<!-- Wrapper for slides -->
				<c:choose>
					<c:when test="${counter == 1}">
						<div class="item active">
							<div class="parkHomeImage">
								<c:url var="indParksDeetsUrl"
									value="/indParksDeets?parkCode=${park.parkCode}" />
								<a href="${indParksDeetsUrl}"> <c:url var="parkImgUrl"
										value="/img/parks/${park.parkCode}.jpg" /> <img
									src="${parkImgUrl}" />
								</a>
							</div>
							<div class="carousel-caption">
								<h3>
									<c:out value="${park.parkName}" />
								</h3>
								<p>
									<c:out value="${park.inspirationalQuote}" /><br>
									<c:out value="- ${park.inspirationalQuoteSource}" />
								</p>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="item">
							<div class="parkHomeImage">
								<c:url var="indParksDeetsUrl"
									value="/indParksDeets?parkCode=${park.parkCode}" />
								<a href="${indParksDeetsUrl}"> <c:url var="parkImgUrl"
										value="/img/parks/${park.parkCode}.jpg" /> <img
									src="${parkImgUrl}" />
								</a>
							</div>
							<div class="carousel-caption">
								<h3>
									<c:out value="${park.parkName}" />
								</h3>
								<p>
									<c:out value="${park.inspirationalQuote}" /><br>
									<c:out value="- ${park.inspirationalQuoteSource}" />
								</p>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<c:set var="counter" value="${counter+1}" />
			</c:forEach>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>

		<%@include file="common/footer.jspf"%>
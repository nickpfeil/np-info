<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value= "Product Details View"/>
<%@include file="common/header.jspf" %>
<div class="detailPage">
	<div class="parkImage">
		<c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<img src="${parkImgUrl}" />
	</div>
	<div class="parkDetails">
		<div class="parkName">
			<c:out value="Park: ${park.parkName}" />
		</div>
		<div class="parkState">
			<c:out value="State: ${park.state}" />
		</div>
		<div class="parkAcreage">
			<c:out value="Acreage: ${park.acreage}" />
		</div>
		<div class="parkElevation">
			<c:out value="Altitude: ${park.elevation}" />
		</div>
		<div class="parkMilesOfTrail">
			<c:out value="Miles Of Trails: ${park.milesOfTrail}" />
		</div>
		<div class="parkNumberOfCampsites">
			<c:out value="# of Campsites: ${park.numberOfCampsites}"></c:out>
		</div>
		<div class="parkClimate">
			<c:out value="Climate: ${park.climate}"></c:out>
		</div>
		<div class="parkFounded">
			<c:out value="Year Park Founded: ${park.yearFounded}"></c:out>
		</div>
		<div class="parkVisitors">
			<c:out value="Annual Visitors: ${park.annualVisitorCount}"></c:out>
		</div>
		<div class="parkDescription">
			<c:out value="Description: ${park.parkDescription}"></c:out>
		</div>
	</div>

	<div class="weatherDetails">
		<div class="firstDay">
			Forecast:
			<c:out value="${firstDay.forecast}" />
			High:
			<c:out value="${firstDay.high}" />
			Low:
			<c:out value="${firstDay.low}" />
			<c:choose>
				<c:when test="${firstDay.forecast == 'snow'}">
					<c:url var="firstDayImageUrl" value="/img/weather/snow.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
				<c:when test="${firstDay.forecast == 'rain'}">
					<c:url var="firstDayImageUrl" value="/img/weather/rain.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
				<c:when test="${firstDay.forecast == 'thunderstorms'}">
					<c:url var="firstDayImageUrl"
						value="/img/weather/thunderstorms.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
				<c:when test="${firstDay.forecast == 'sunny'}">
					<c:url var="firstDayImageUrl" value="/img/weather/sunny.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
				<c:when test="${firstDay.forecast == 'partly cloudy'}">
					<c:url var="firstDayImageUrl" value="/img/weather/partlyCloudy.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
				<c:when test="${firstDay.forecast == 'cloudy'}">
					<c:url var="firstDayImageUrl" value="/img/weather/cloudy.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
			</c:choose>
			<div class="temperature">
				<c:choose>
					<c:when test="${firstDay.high > 75}">
						<c:out value="Bring An Extra Gallon Of Water" />
					</c:when>
					<c:when test="${firstDay.high - weather.low > 20}">
						<c:out value="Wear Breathable Layers" />
					</c:when>
					<c:when test="${firstDay.low < 20}">
						<c:out value="Freezing Temperature: Please Limit Time Outdoors" />
					</c:when>
				</c:choose>
			</div>
		</div>
		<c:forEach items="${fourDay}" var="day">
			<div class="fourDay">

				Forecast:
				<c:out value="${day.forecast}" />
				High:
				<c:out value="${day.high}" />
				Low:
				<c:out value="${day.low}" />
			</div>
			<c:choose>
				<c:when test="${day.forecast == 'snow'}">
					<c:url var="weatherImageUrl" value="/img/weather/snow.png" />
					<img src="${weatherImageUrl}" />
					<c:out value="Pack Snowshoes" />
				</c:when>
				<c:when test="${day.forecast == 'rain'}">
					<c:url var="weatherImageUrl" value="/img/weather/rain.png" />
					<img src="${weatherImageUrl}" />
					<c:out value="Pack Rain Gear And Wear Waterproof Shoes" />
				</c:when>
				<c:when test="${day.forecast == 'thunderstorms'}">
					<c:url var="weatherImageUrl" value="/img/weather/thunderstorms.png" />
					<img src="${weatherImageUrl}" />
					<c:out value="Seek Shelter And Avoid Hiking On Exposed Ridges" />
				</c:when>
				<c:when test="${day.forecast == 'sunny'}">
					<c:url var="weatherImageUrl" value="/img/weather/sunny.png" />
					<img src="${weatherImageUrl}" />
					<c:out value="Pack Sunblock" />
				</c:when>
				<c:when test="${day.forecast == 'partly cloudy'}">
					<c:url var="weatherImageUrl" value="/img/weather/partlyCloudy.png" />
					<img src="${weatherImageUrl}" />
				</c:when>
				<c:when test="${day.forecast == 'cloudy'}">
					<c:url var="firstDayImageUrl" value="/img/weather/cloudy.png" />
					<img src="${firstDayImageUrl}" />
				</c:when>
			</c:choose>
			<div class="temperature">
				<c:choose>
					<c:when test="${day.high > 75}">
						<c:out value="Bring An Extra Gallon Of Water" />
					</c:when>
					<c:when test="${day.high - weather.low > 20}">
						<c:out value="Wear Breathable Layers" />
					</c:when>
					<c:when test="${day.low < 20}">
						<c:out value="Freezing Temperature: Please Limit Time Outdoors" />
					</c:when>
				</c:choose>
			</div>
		</c:forEach>
	</div>
	<div>
		<c:choose>
			<c:when test="${tempSystem == 'Fahrenheit' || tempSystem == null}">
				<c:url var="tempSystemUrl" value="/indParksDeets" />
				<form action="${tempSystemUrl}" method="POST">
					<div class="form-group">
					<input type="hidden" id="parkCode" name="parkCode" value="${park.parkCode}" class="form-control" />
					<input type="hidden" id="tempSystem" name="tempSystem" value="Celsius" class="form-control" />
					</div>
					<button type="submit" class="btn btn-primary">Celsius</button>
				</form>
			</c:when>
			<c:otherwise>
				<c:url var="tempSystemUrl" value="/indParksDeets" />
				<form action="${tempSystemUrl}" method="POST">
					<div class="form-group">
					<input type="hidden" id="parkCode" name="parkCode" value="${park.parkCode}" class="form-control" />
					<input type="hidden" id="tempSystem" name="tempSystem" value="Fahrenheit" class="form-control" />
					</div>
					<button type="submit" class="btn btn-primary">Fahrenheit</button>
				</form>
			</c:otherwise>
		</c:choose>
	</div>
</div>


<%@include file="common/footer.jspf" %>
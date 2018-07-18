<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value= "Product Details View"/>
<%@include file="common/header.jspf" %>
	<div class = "detailPage">
			<div class = "parkImage">
       				<c:url var = "parkImgUrl" value = "/img/${park.parkCode}"/>
       						<img src="${parkImgUrl}"/>
  		 	</div>
  		 	<div class= "parkDetails">
  		 	<div class = "parkName">
       					<c:out value ="Park: ${park.parkName}"/>
       		</div>
       		<div class = "parkState">
       				<c:out value = "State: ${park.state}"/>
       		</div>
       		<div class = "parkAcreage">
       				<c:out value = "Acreage: ${park.acreage}"/>
        				</div>
       		<div class = "parkElevation">
       				<c:out value = "Price: $ ${park.elevation}"/>
       		</div>
       		<div class = "parkMilesOfTrail">
       				<c:out value ="Miles Of Trails: ${park.milesOfTrails}"/> 
       		</div>
       		<div class = "parkNumberOfCampsites">
       		<c:out value="# of Campsites: ${park.numberOfCampsites}"></c:out>
       		</div>
       		<div class = "parkClimate">
       		<c:out value="Climate: ${park.climate}"></c:out>
       		</div>
       		<div class = "parkFounded">
       		<c:out value="Year Park Founded: ${park.yearFounded}"></c:out>
       		</div>
       		<div class = "parkVisitors">
       		<c:out value="Annual Visitors: ${park.annualVisitorCount}"></c:out>
       		</div>
       		<div class = "parkDescription">
       		<c:out value="Description: ${park.parkDescription}"></c:out>
       		</div>
        	</div>
        	<div class= "weatherDetails">
        		<div class="forecast">
        		<c:out value=" Today's Forecast: ${weather.firstDayForecast}"></c:out>
        		<br>
        		<c:out value="5 Day Forecast: ${weather.restOfForecast}"></c:out>
        		<c:choose>
        			<c:when test="${weather.forecast == 'snow'}">
        				<c:url var = "weatherImageUrl" value = "/img/snow.png"/>
       					<img src = "${weatherImageUrl}"/>
       					<c:out value="Pack Snowshoes"/>
       			</c:when>
       			<c:when test="${weather.forecast == 'rain'}">
        				<c:url var = "weatherImageUrl" value = "/img/rain.png"/>
       					<img src = "${weatherImageUrl}"/>
       					<c:out value="Pack Rain Gear And Wear Waterproof Shoes"/>
       			</c:when>
       			<c:when test="${weather.forecast == 'thunderstorms'}">
        				<c:url var = "weatherImageUrl" value = "/img/thunderstorms.png"/>
       					<img src = "${weatherImageUrl}"/>
       					<c:out value="Seek Shelter And Avoid Hiking On Exposed Ridges"/>
       			</c:when>
       			<c:when test="${weather.forecast == 'sun'}">
        				<c:url var = "weatherImageUrl" value = "/img/sunny.png"/>
       					<img src = "${weatherImageUrl}"/>
       					<c:out value="Pack Sunblock"/>
       			</c:when>	
        		</c:choose>
        		<div class="temperature">
        			<c:choose>
        				<c:when test="${weather.high > 75}">
        					<c:out value="Bring An Extra Gallon Of Water"/>
        				</c:when>
        				<c:when test="${weather.high - weather.low > 20}">
        					<c:out value="Wear Breathable Layers"/>
        				</c:when>
        				<c:when test="${weather.low < 20}">
        					<c:out value="Freezing Temperature: Please Limit Time Outdoors"/>
        				</c:when>
        			</c:choose>
        		</div>
        	</div>
      </div>	
   </div>
   
<%@include file="common/footer.jspf" %>
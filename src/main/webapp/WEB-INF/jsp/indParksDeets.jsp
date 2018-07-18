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
        	
        	
        	
        	</div>
   </div>
   
<%@include file="common/footer.jspf" %>
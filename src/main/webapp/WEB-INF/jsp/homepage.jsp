<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value= "National Parks"/>
<%@include file="common/header.jspf" %>
<div class = "DetailPage">
       <c:forEach var = "park" items ="${parks}">
       		<div class ="parkDiv">
       			<div class = "parkImage">
       				<c:url var="parkDetailUrl" value="/parkDetail?parkCode=${park.parkCode}"/>
       				<a href="${parkDetailUrl}">
       					<c:url var = "parkImgUrl" value = "/img/parks/${park.parkCode}.jpg"/>
       						<img src="${parkImgUrl}"/>
       				</a>
       				</div>
       			</div>
       			<div class="parkDetails">
       				<div class = "parkInspirationalQoute">
       					<c:out value = "${park.inspirationalQuote}"/>
       				</div>
       			</div>
       	</c:forEach>
  	</div>
<%@include file="common/footer.jspf" %>
       	
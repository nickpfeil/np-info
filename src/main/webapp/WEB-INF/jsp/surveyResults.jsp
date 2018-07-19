<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value= "Survey Results"/>
<%@include file="common/header.jspf"%>
<div class = "surveyResultsPage">
  		 	<div class= "surveyDetails">
  		 		<c:forEach var= "survey" items="${parks}">
  		 	<div class="indReview">
  		 	<div class = "review">
       			<c:out value = "${parks.userState}"/>
       		</div>
       		<div class = "surveyText">
       		<c:out value=" Recent Comments: ${parks.text}"></c:out>
       		</div>
       		</div>
       	</c:forEach>
       	</div>
   </div>
   <%@include file="common/footer.jspf"%>
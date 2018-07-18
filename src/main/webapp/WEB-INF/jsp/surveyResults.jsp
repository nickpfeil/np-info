<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value= "Survey Results"/>
<%@include file="common/header.jspf"%>
<div class = "surveyResultsPage">
  		 	<div class= "surveyDetails">
  		 		<c:forEach var= "survey" items="${surveys}">
  		 	<div class="indReview">
  		 	<div class = "review">
       			<c:out value = "${survey.userState}"/>
       		</div>
       		<div class = "surveyText">
       		<c:out value=" Recent Comments: ${survey.text}"></c:out>
       		</div>
       		</div>
       	</c:forEach>
       	</div>
   </div>
   <%@include file="common/footer.jspf"%>
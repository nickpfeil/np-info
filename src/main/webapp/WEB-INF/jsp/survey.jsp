<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Survey"/>

<%@include file="common/header.jspf"%>
<h2>National Park Survey</h2>

<c:url var="formAction" value="/survey" />
	<form method="POST" action="${formAction}">
	<div class="newSurveyForm">
		<label for="userEmail">Email Address:</label> 
		<input type="text" name="userEmail" />
		<label for="userState">State of Residence:</label> 
		<input type="text" name="userState"/>
		<label for="userParkSelection">Favorite Park</label> 
		<input type="text" name="userParkSelection" />
		<label for="text">Comments:</label> 
		<input class= "reviewDescription" type="text" name="text" />
		<input class= "formSubmitButton" type= "Submit" value="Submit" />
			</div>
	</form>

	
<%@include file="common/footer.jspf"%>
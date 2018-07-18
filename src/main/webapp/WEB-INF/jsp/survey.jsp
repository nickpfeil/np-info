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
		<input type="radio" name="userParkSelection" value="CVNP" checked> CUYAHOGA VALLEY NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="ENP" > EVERGLADES NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="GCNP" > GRAND CANYON NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="GNP" > GLACIER NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="GSMNP" > GREAT SMOKEY MOUNTAIN NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="GTNP" > GRAND TETON NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="MRNP" > MOUNT RAINIER NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="RMNP" > ROCKY MOUNTAIN NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="YNP" > YELLOWSTONE NATIONAL PARK<br>
		<input type="radio" name="userParkSelection" value="YNP2" > YOSEMITE NATIONAL PARK<br>
		<label for="userActivityLevel">How Active Are You</label> 
		<input type="radio" name="activityLevel" value="inactive" checked> Inactive<br>
  		<input type="radio" name="activityLevel" value="sedentary"> Sedentary<br>
  		<input type="radio" name="activityLevel" value="active"> Active<br>
  		<input type="radio" name="activityLevel" value="extremely active"> Extremely Active<br>
		<input class= "formSubmitButton" type= "Submit" value="Submit" />
			</div>
	</form>

	
<%@include file="common/footer.jspf"%>
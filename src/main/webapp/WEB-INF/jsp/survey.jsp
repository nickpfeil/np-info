<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Survey"/>

<%@include file="common/header.jspf"%>
<h2>National Park Survey</h2>

<c:url var="formAction" value="/survey" />
	<form method="POST" action="${formAction}">
	<div class="newSurveyForm">
		<label for="emailAddress">Email Address:</label> 
		<input type="text" name="emailAddress" />
		<label for="state">State of Residence:</label> 
		<input type="text" name="state"/>
		<label for="parkCode">Favorite Park</label> 
		<input type="radio" name="parkCode" value="CVNP"> CUYAHOGA VALLEY NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="ENP" > EVERGLADES NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="GCNP" > GRAND CANYON NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="GNP" > GLACIER NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="GSMNP" > GREAT SMOKEY MOUNTAIN NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="GTNP" > GRAND TETON NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="MRNP" > MOUNT RAINIER NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="RMNP" > ROCKY MOUNTAIN NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="YNP" > YELLOWSTONE NATIONAL PARK<br>
		<input type="radio" name="parkCode" value="YNP2" > YOSEMITE NATIONAL PARK<br>
		<label for="activityLevel">How Active Are You</label> 
		<input type="radio" name="activityLevel" value="inactive"> Inactive<br>
  		<input type="radio" name="activityLevel" value="sedentary"> Sedentary<br>
  		<input type="radio" name="activityLevel" value="active"> Active<br>
  		<input type="radio" name="activityLevel" value="extremely active"> Extremely Active<br>
		<input class= "formSubmitButton" type= "Submit" value="Submit" />
			</div>
	</form>

	
<%@include file="common/footer.jspf"%>
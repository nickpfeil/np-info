<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="pageTitle" value="Survey"/>

<%@include file="common/header.jspf"%>
<h2 class="surveyHeading">National Park Survey</h2>

<div class="formAlign">
<c:url var="formAction" value="/survey" />
	<form method="POST" action="${formAction}">
	<div id="contact-form">
	<div>
		<h1>LET US KNOW YOUR FAVORITE PARK!</h1> 
	</div>
		<p id="failure">Oopsie...message not sent.</p>  
		<p id="success">Your survey was sent successfully. Thank you!</p>

		   <form method="post" action="/survey">
			<div>
		      <label for="name">
		      	<span class="required">Email Address: *</span> 
		      	<input type="email" id="email" name="emailAddress" value="" placeholder="Your Email" required="required" tabindex="1" autofocus="autofocus" />
		      </label> 
			</div>
			<div>
		      <label for="email">
		      	<span class="required">State of Residence: *</span>
		      	<input type="text" id="state" name="state" value="" placeholder="Your State" tabindex="2" required="required" />
		      </label>  
			</div>
			<div>		          
		      <label for="park">
		      <span>Favorite Park: </span>
			      <select id="parckCode" name="parkCode" tabindex="4">  
		    <option name="parkCode" value="CVNP">CUYAHOGA VALLEY NATIONAL PARK</option>
		    <option name="parkCode" value="ENP">EVERGLADES NATIONAL PARK</option>
		    <option name="parkCode" value="GCNP">GRAND CANYON NATIONAL PARK</option>
		    <option name="parkCode" value="GNP">GLACIER NATIONAL PARK</option>
		    <option name="parkCode" value="GSMNP">GREAT SMOKY MOUNTAIN NATIONAL PARK</option>
		    <option name="parkCode" value="GTNP">GRAND TETON NATIONAL PARK</option>
		    <option name="parkCode" value="MRNP">MOUNT RAINIER NATIONAL PARK</option>
		    <option name="parkCode" value="RMNP">ROCKY MOUNTAIN NATIONAL PARK</option>
		    <option name="parkCode" value="YNP">YELLOWSTONE NATIONAL PARK</option>
		    <option name="parkCode" value="YNP2">YOSEMITE NATIONAL PARK</option>
			      </select>
		      </label>
			</div>
			<div>		          
		      <label for="park">
		      <span>HOW ACTIVE ARE YOU: </span>
			      <select id="activiyLevel" name="activityLevel" tabindex="4">  
		    <option name="activityLevel" value="inactive">Inactive</option>
		    <option name="activityLevel" value="sedentary">Sedentary</option>
		    <option name="activityLevel" value="active">Active</option>
		    <option name="activityLevel" value="extremely active">Extremely Active</option>
			      </select>
		      </label>
			</div>
			<div>		           
		      <button name="submit" type="submit" id="submit" >SEND</button> 
			</div>
		   </form>

	</div>
	</form>
	</div>
	<div class=formBackground></div>
<%@include file="common/footer.jspf"%>
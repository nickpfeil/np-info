<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="common/header.jspf" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<div class="detailPage">
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
 <strong></strong><h1 class="margin">Your Park Adventure Starts Here</h1></strong>
 
  <c:url var="parkImgUrl" value="/img/parks/${park.parkCode}.jpg" />
		<img src="${parkImgUrl}" class="img-responsive" style="display:inline" alt="fall" width="1100" height="800" opacity=".5" />
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h2 class="margin">PARK DETAILS</h2>
  	<hr></hr>
 	<div class="firstDeets">
		<div class="parkName">
			<h1>${park.parkName}</h1> 
		</div>
		<br>
		<div class="parkState">
			<h2>State: ${park.state}</h2>
		</div>
		<br>
		<div class="parkAcreage">
			<h2>Acreage: ${park.acreage}</h2>
		</div>
		<br>
		<div class="parkElevation">
			<c:url var="altitudeUrl" value="/img/snow.png" />
			<img src="${altitudeUrl}">
			<h2>Altitude: ${park.elevation}</h2>
		</div>
		<br>
		<div class="parkMilesOfTrail">
		<c:url var="trailUrl" value="/img/trail.png" />
			<img src="${trailUrl}">
			<h2>Miles Of Trails: ${park.milesOfTrail}</h2>
		</div>
		<br>
		<div class="parkNumberOfCampsites">
			<c:url var="campgroundUrl" value="/img/campground.png" />
			<img src="${campgroundUrl}"width="140" height="120">
			<h2># of Campsites: ${park.numberOfCampsites}</h2>
		</div>
		<br>
		<div class="parkClimate">
			<h2>Climate: ${park.climate}</h2>
		</div>
		<br>
		<div class="parkFounded">
			<h2>Year Park Founded: ${park.yearFounded}</h2>
		</div>
		<br>
		<div class="parkVisitors">
			<h2>Annual Visitors: ${park.annualVisitorCount}</h2>
		</div>
		<br>
	</div>
		<hr></hr>
		<div class="parkDescription">
			<h2>Description: ${park.parkDescription}</h2>
		</div>
	</div>
<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h2 class="weather" id="temperature">WEATHER</h2><br>
    <div class="weatherDetails">
    <c:choose>
    <c:when  test="${tempSystem == 'Fahrenheit' || tempSystem == null}">
	<c:choose>
		<c:when test="${park.parkCode == 'gnp'}">
			<script type='text/javascript' src='https://darksky.net/widget/default/48.4949755,-113.9810756/us12/en.js?width=100%&height=350&title=Glacier National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'cvnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/41.2411668,-81.55261759999999/us12/en.js?width=100%&height=350&title=Cuy. Valley National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'enp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/25.4687224,-80.4775569/us12/en.js?width=100%&height=350&title=Everglades National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gcnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/35.9735954,-112.1265569/us12/en.js?width=100%&height=350&title=Gr. Canyon National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gsmnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/35.714259,-83.5101638/us12/en.js?width=100%&height=350&title=Smoky Mtn. National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gtnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/43.6871545,-110.7354884/us12/en.js?width=100%&height=350&title=Grand Teton National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'mrnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/46.7502405,-121.812778/us12/en.js?width=100%&height=350&title=Mt. Rainer National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'rmnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/40.25220729999999,-105.8230671/us12/en.js?width=100%&height=350&title=Rocky Mtn. National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'ynp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/44.4154952,-110.5754846/us12/en.js?width=100%&height=350&title=Yellowstone National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'ynp2'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/37.74557009999999,-119.5936038/us12/en.js?width=100%&height=350&title=Yosemite National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=us&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
	</c:choose>
	</c:when>
	<c:otherwise>
	<c:choose>
	<c:when test="${park.parkCode == 'gnp'}">
			<script type='text/javascript' src='https://darksky.net/widget/default/48.4949755,-113.9810756/uk12/en.js?width=100%&height=350&title=Glacier National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'cvnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/41.2411668,-81.55261759999999/uk12/en.js?width=100%&height=350&title=Cuy. Valley National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'enp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/25.4687224,-80.4775569/uk12/en.js?width=100%&height=350&title=Everglades National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gcnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/35.9735954,-112.1265569/uk12/en.js?width=100%&height=350&title=Gr. Canyon National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gsmnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/35.714259,-83.5101638/uk12/en.js?width=100%&height=350&title=Smoky Mtn. National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'gtnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/43.6871545,-110.7354884/uk12/en.js?width=100%&height=350&title=Grand Teton National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'mrnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/46.7502405,-121.812778/uk12/en.js?width=100%&height=350&title=Mt. Rainer National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'rmnp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/40.25220729999999,-105.8230671/uk12/en.js?width=100%&height=350&title=Rocky Mtn. National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'ynp'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/44.4154952,-110.5754846/uk12/en.js?width=100%&height=350&title=Yellowstone National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
		<c:when test="${park.parkCode == 'ynp2'}">
		<script type='text/javascript' src='https://darksky.net/widget/default/37.74557009999999,-119.5936038/uk12/en.js?width=100%&height=350&title=Yosemite National Park&textColor=333333&bgColor=FFFFFF&transparency=false&skyColor=def704&fontFamily=Palatino&customFont=&units=uk&htColor=fd0000&ltColor=0400fd&displaySum=yes&displayHeader=yes'></script>
		</c:when>
	</c:choose>
	</c:otherwise>
	</c:choose>
	<div class="tempButton">
				<c:choose>
					<c:when test="${tempSystem == 'Fahrenheit' || tempSystem == null}">
						<c:url var="tempSystemUrl" value="/indParksDeets" />
						<form action="${tempSystemUrl}" method="POST">
							<div class="form-group">
								<input type="hidden" id="parkCode" name="parkCode"
									value="${park.parkCode}" class="form-control" /> <input
									type="hidden" id="tempSystem" name="tempSystem" value="Celsius"
									class="form-control" />
							</div>
							<button type="submit" class="btn btn-primary">Celsius</button>
						</form>
					</c:when>
					<c:otherwise>
						<c:url var="tempSystemUrl" value="/indParksDeets" />
						<form action="${tempSystemUrl}" method="POST">
							<div class="form-group">
								<input type="hidden" id="parkCode" name="parkCode"
									value="${park.parkCode}" class="form-control" /> <input
									type="hidden" id="tempSystem" name="tempSystem"
									value="Fahrenheit" class="form-control" />
								<button type="submit" class="btn btn-primary">Fahrenheit</button>
							</div>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
<hr></hr>
	<br>
  </div>
</div>

<!-- Fourth Container -->
<div class="container-fluid bg-4 text-center">
  <h3 class="margin">Location</h3>
 	<div class="firstDeets">
		<div class="map">
	<c:choose>
	<c:when test="${park.parkCode == 'gnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d403173.68198020646!2d-119.5383294!3d37.8651011!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2d249c2ced8003fe!2sGlacier+National+Park!5e0!3m2!1sen!2sus!4v1532117377303" width="1000" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'cvnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d95945.2325905128!2d-81.567812!3d41.2808248!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcac9be4a7c9ee5aa!2sCuyahoga+Valley+National+Park!5e0!3m2!1sen!2sus!4v1532119128595" width="1000" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'enp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d403173.68198020646!2d-119.5383294!3d37.8651011!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2d249c2ced8003fe!2sEverglades+National+Park!5e0!3m2!1sen!2sus!4v1532117377303" width="300" height="275" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'gcnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d403173.68198020646!2d-119.5383294!3d37.8651011!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2d249c2ced8003fe!2sGrand+Canyon+National+Park!5e0!3m2!1sen!2sus!4v1532117377303" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'gsmnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d415186.86180508183!2d-83.4895449!3d35.6117644!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3c926fc1a7752461!2sGreat+Smoky+Mountains+National+Park!5e0!3m2!1sen!2sus!4v1532119290540" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'gtnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d368659.64539404435!2d-110.6817627!3d43.7904282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa5a0b88ecc91a337!2sGrand+Teton+National+Park!5e0!3m2!1sen!2sus!4v1532119384227" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'mrnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d21828.498442732052!2d-121.7778324780267!3d46.85230561506444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5490d193f70860fb%3A0x5b5e4fe17ad6b707!2sMount+Rainier!5e0!3m2!1sen!2sus!4v1532119452156" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'rmnp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d194622.70982140634!2d-105.6836389!3d40.3427932!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xfa27ee43a78e8217!2sRocky+Mountain+National+Park!5e0!3m2!1sen!2sus!4v1532119507282" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'ynp'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d729408.8834850902!2d-110.588455!3d44.427963!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaca8f930348fe1bb!2sYellowstone+National+Park!5e0!3m2!1sen!2sus!4v1532119566953" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	<c:when test="${park.parkCode == 'ynp2'}">
	<div id="map" style="width:100%;height:400px;">
	<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d403173.68198020646!2d-119.5383294!3d37.8651011!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2d249c2ced8003fe!2sYosemite+National+Park!5e0!3m2!1sen!2sus!4v1532119613550" width="300" height="275" frameborder="0" style="border:0" allowfullscreen></iframe>
	</div>
	</c:when>
	</c:choose>
</div>
</div>
</div>
</div>

<%@include file="common/footer.jspf" %>
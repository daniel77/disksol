<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doacao.label', default: 'Doação')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script src="http://maps.googleapis.com/maps/api/js"></script>
	</head>
	<body>
		<a href="#create-doacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-doacao" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${doacaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${doacaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:doacaoInstance, action:'save']"  enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Salvar')}" />
				</fieldset>
			</g:form>
		</div>


		<script>
var x = document.getElementById("googleMap");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}
		
google.maps.event.addDomListener(window, 'load', getLocation); 

function showPosition(position) {

    var mapProp = {
    		  center:new google.maps.LatLng(position.coords.latitude ,  position.coords.longitude),
    		  zoom: 15,
    		  mapTypeId: google.maps.MapTypeId.ROADMAP
    		};
    var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);

    var myLatLng = {lat:position.coords.latitude, lng: position.coords.longitude};
    
    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
      });
        
    
}
</script>
	</body>
</html>

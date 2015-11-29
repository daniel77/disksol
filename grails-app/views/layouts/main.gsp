<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="http://www.disksolidariedade.com.br/"><asset:image src="logos.png" alt="Grails" class="logo_2"/></a>
							
						<a href="/disksol/categoria/index">Categoria</a>
						
						<a href="/disksol/doacao/index">Doação</a>
					
						<a href="/disksol/doador/index">Doador</a>
					
						<a href="/disksol/evento/index">Evento</a>
					
						<a href="/disksol/instituicao/index">Instituição</a>
					
						<a href="/disksol/itemNecessidade/index">Requisição</a>
					
						<a href="/disksol/localDoacao/index">Local Doação</a>					
					
						<a href="/disksol/user/index">Usuário</a>
				
				<a href="http://hackathon.curitiba.pr.gov.br/" > <asset:image src="hackathon.png" alt="Grails" class="logo_3"/> </a>
		</div>


		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>

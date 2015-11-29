<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>App Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Welcome to Disk Solidariedade</h1>
			<p>
<br>
Consiste em uma Plataforma Social onde o cidadão pode registrar a intenção de doação de algo pertinente,<br>
 podendo incluir fotos e demais informações pertinentes a esta doação.<br>

<br>
<a href="https://www.sebraecanvas.com/#/dashboard/meus-canvas/16868">  Canvas </a><br>

<br>
<a href="http://hackathon.peacelabs.co/projects/rua-da-cidadania-1">Peace libs</a>:<br>
</p>

			<div id="controller-list" role="navigation">
				<h2>Menus disponiveis:</h2>
				<ul>
				
				
				
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
					<g:if test="${c.fullName.startsWith('org.')}">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
						</g:if>
					</g:each>
					
					
					
				</ul>
				
						
		<%
			 def xmlFeed = new XmlParser().parse('http://www.fas.curitiba.pr.gov.br/publico/rss/feedconteudos.xml');
		
			  def feedList = []
			
			  (0..< xmlFeed.channel.item.size()).each {
		
				 def item = xmlFeed.channel.item.get(it);
				 def feed = [:]
				 feed.title =  item.title.text()
				 feed.link =  item.link.text()
				 feed.desc = item.description.text() 
					 
				 feedList << feed
			  }
		
			  feedList
			  
		 %>				
								<h2>Noticias da FAS:</h2>
				<ul>
				
					<g:each var="f" in="${feedList}">
				<li class="controller"> <a href="${f.link}">${f.title}</a> </li>
					</g:each>	
							
				</ul>
				
			</div>
		</div>
	</body>
</html>

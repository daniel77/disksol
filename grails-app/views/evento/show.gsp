
<%@ page import="org.disksol.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="evento.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="instituicao" action="show" id="${eventoInstance?.author?.id}">${eventoInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataInicio}">
				<li class="fieldcontain">
					<span id="dataInicio-label" class="property-label"><g:message code="evento.dataInicio.label" default="Data Inicio" /></span>
					
						<span class="property-value" aria-labelledby="dataInicio-label"><g:formatDate date="${eventoInstance?.dataInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.dataTermino}">
				<li class="fieldcontain">
					<span id="dataTermino-label" class="property-label"><g:message code="evento.dataTermino.label" default="Data Termino" /></span>
					
						<span class="property-value" aria-labelledby="dataTermino-label"><g:formatDate date="${eventoInstance?.dataTermino}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="evento.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${eventoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.locais}">
				<li class="fieldcontain">
					<span id="locais-label" class="property-label"><g:message code="evento.locais.label" default="Locais" /></span>
					
						<g:each in="${eventoInstance.locais}" var="l">
						<span class="property-value" aria-labelledby="locais-label"><g:link controller="localDoacao" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.necessidades}">
				<li class="fieldcontain">
					<span id="necessidades-label" class="property-label"><g:message code="evento.necessidades.label" default="Necessidades" /></span>
					
						<g:each in="${eventoInstance.necessidades}" var="n">
						<span class="property-value" aria-labelledby="necessidades-label"><g:link controller="itemNecessidade" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="evento.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${eventoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

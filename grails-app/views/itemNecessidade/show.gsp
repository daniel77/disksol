
<%@ page import="org.disksol.ItemNecessidade"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'itemNecessidade.label', default: 'ItemNecessidade')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-itemNecessidade" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-itemNecessidade" class="content scaffold-show"
		role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list itemNecessidade">




			<g:if test="${itemNecessidadeInstance?.nome}">
				<li class="fieldcontain"><span id="nome-label"
					class="property-label"><g:message
							code="itemNecessidade.nome.label" default="Nome" /></span> <span
					class="property-value" aria-labelledby="nome-label"><g:fieldValue
							bean="${itemNecessidadeInstance}" field="nome" /></span></li>
			</g:if>

			<g:if test="${itemNecessidadeInstance?.quantidade}">
				<li class="fieldcontain"><span id="quantidade-label"
					class="property-label"><g:message
							code="itemNecessidade.quantidade.label" default="Quantidade" /></span>

					<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue
							bean="${itemNecessidadeInstance}" field="quantidade" /></span></li>
			</g:if>

			<g:if test="${itemNecessidadeInstance?.status}">
				<li class="fieldcontain"><span id="status-label"
					class="property-label"><g:message
							code="itemNecessidade.status.label" default="Status" /></span> <span
					class="property-value" aria-labelledby="status-label"><g:fieldValue
							bean="${itemNecessidadeInstance}" field="status" /></span></li>
			</g:if>

			<g:if test="${itemNecessidadeInstance?.descricao}">
				<li class="fieldcontain"><span id="descricao-label"
					class="property-label"><g:message
							code="itemNecessidade.descricao.label" default="Descricao" /></span> <span
					class="property-value" aria-labelledby="descricao-label"><g:fieldValue
							bean="${itemNecessidadeInstance}" field="descricao" /></span></li>
			</g:if>

			<g:if test="${itemNecessidadeInstance?.evento}">
				<li class="fieldcontain"><span id="evento-label"
					class="property-label"><g:message
							code="itemNecessidade.evento.label" default="Evento" /></span> <span
					class="property-value" aria-labelledby="evento-label"><g:link
							controller="evento" action="show"
							id="${itemNecessidadeInstance?.evento?.id}">
							${itemNecessidadeInstance?.evento?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>


		</ol>
		<g:form url="[resource:itemNecessidadeInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit"
					resource="${itemNecessidadeInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>

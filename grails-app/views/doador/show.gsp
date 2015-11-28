
<%@ page import="org.disksol.Doador"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'doador.label', default: 'Doador')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-doador" class="skip" tabindex="-1"><g:message
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
	<div id="show-doador" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list doador">

			<g:if test="${doadorInstance?.nome}">
				<li class="fieldcontain"><span id="nome-label"
					class="property-label"><g:message code="doador.nome.label"
							default="Nome" /></span> <span class="property-value"
					aria-labelledby="nome-label"><g:fieldValue
							bean="${doadorInstance}" field="nome" /></span></li>
			</g:if>

			<g:if test="${doadorInstance?.telefone}">
				<li class="fieldcontain"><span id="telefone-label"
					class="property-label"><g:message
							code="doador.telefone.label" default="Telefone" /></span> <span
					class="property-value" aria-labelledby="telefone-label"><g:fieldValue
							bean="${doadorInstance}" field="telefone" /></span></li>
			</g:if>

			<g:if test="${doadorInstance?.cidade}">
				<li class="fieldcontain"><span id="cidade-label"
					class="property-label"><g:message code="doador.cidade.label"
							default="Cidade" /></span> <span class="property-value"
					aria-labelledby="cidade-label"><g:fieldValue
							bean="${doadorInstance}" field="cidade" /></span></li>
			</g:if>



			<g:if test="${doadorInstance?.doacoes}">
				<li class="fieldcontain"><span id="doacoes-label"
					class="property-label"><g:message
							code="doador.doacoes.label" default="Doacões" /></span> <g:each
						in="${doadorInstance.doacoes}" var="d">
						<span class="property-value" aria-labelledby="doacoes-label"><g:link
								controller="doacao" action="show" id="${d.id}">
								${d?.encodeAsHTML()}
							</g:link></span>
					</g:each></li>
			</g:if>

		</ol>
		<g:form url="[resource:doadorInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${doadorInstance}">
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

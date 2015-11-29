
<%@ page import="org.disksol.Instituicao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'instituicao.label', default: 'Instituição')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-instituicao" class="skip" tabindex="-1"><g:message
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
	<div id="show-instituicao" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list instituicao">

			<g:if test="${instituicaoInstance?.nome}">
				<li class="fieldcontain"><span id="nome-label"
					class="property-label"><g:message
							code="instituicao.nome.label" default="Nome" /></span> <span
					class="property-value" aria-labelledby="nome-label"><g:fieldValue
							bean="${instituicaoInstance}" field="nome" /></span></li>
			</g:if>

			<g:if test="${instituicaoInstance?.cnpj}">
				<li class="fieldcontain"><span id="cnpj-label"
					class="property-label"><g:message
							code="instituicao.cnpj.label" default="Cnpj" /></span> <span
					class="property-value" aria-labelledby="cnpj-label"><g:fieldValue
							bean="${instituicaoInstance}" field="cnpj" /></span></li>
			</g:if>
			
			<g:if test="${instituicaoInstance?.telefone}">
				<li class="fieldcontain"><span id="telefone-label"
					class="property-label"><g:message
							code="instituicao.telefone.label" default="Telefone" /></span> <span
					class="property-value" aria-labelledby="telefone-label"><g:fieldValue
							bean="${instituicaoInstance}" field="telefone" /></span></li>
			</g:if>

			<g:if test="${instituicaoInstance?.descricao}">
				<li class="fieldcontain"><span id="descricao-label"
					class="property-label"><g:message
							code="instituicao.descricao.label" default="Descrição" /></span> <span
					class="property-value" aria-labelledby="descricao-label"><g:fieldValue
							bean="${instituicaoInstance}" field="descricao" /></span></li>
			</g:if>

			

		</ol>
		<g:form url="[resource:instituicaoInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${instituicaoInstance}">
					<g:message code="default.button.edit.label" default="Editar" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>

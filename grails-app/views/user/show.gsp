
<%@ page import="org.disksol.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'Usuário')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-user" class="skip" tabindex="-1"><g:message
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
	<div id="show-user" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list user">

			<li class="fieldcontain"><span id="username-label"
				class="property-label"><g:message code="user.username.label"
						default="Login" /></span> <span class="property-value"
				aria-labelledby="username-label"><g:fieldValue
						bean="${userInstance}" field="username" /></span>
			</li>

			<li class="fieldcontain"><span id="accountExpired-label"
				class="property-label"><g:message
						code="user.accountExpired.label" default="Expirado" /></span> <span
				class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean
						boolean="${(userInstance?.accountExpired ? 'Sim' : 'Não')}" /></span>
			</li>

			<li class="fieldcontain"><span id="accountLocked-label"
				class="property-label"><g:message
						code="user.accountLocked.label" default="Bloqueado" /></span> <span
				class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean
						boolean="${userInstance?.accountLocked}" /></span>
			</li>
			
			<li class="fieldcontain"><span id="enabled-label"
				class="property-label"><g:message code="user.enabled.label"
						default="Ativo" /></span> <span class="property-value"
				aria-labelledby="enabled-label"><g:formatBoolean
						boolean="${userInstance?.enabled}" /></span>
		    </li>

		</ol>
		<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${userInstance}">
					<g:message code="default.button.edit.label" default="Editar" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Excluir')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>


<%@ page import="org.disksol.LocalDoacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'localDoacao.label', default: 'LocalDoacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-localDoacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-localDoacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="bairro" title="${message(code: 'localDoacao.bairro.label', default: 'Bairro')}" />
					
						<g:sortableColumn property="cep" title="${message(code: 'localDoacao.cep.label', default: 'Cep')}" />
					
						<g:sortableColumn property="complemento" title="${message(code: 'localDoacao.complemento.label', default: 'Complemento')}" />
					
						<g:sortableColumn property="logradouro" title="${message(code: 'localDoacao.logradouro.label', default: 'Logradouro')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'localDoacao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'localDoacao.numero.label', default: 'Numero')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${localDoacaoInstanceList}" status="i" var="localDoacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${localDoacaoInstance.id}">${fieldValue(bean: localDoacaoInstance, field: "bairro")}</g:link></td>
					
						<td>${fieldValue(bean: localDoacaoInstance, field: "cep")}</td>
					
						<td>${fieldValue(bean: localDoacaoInstance, field: "complemento")}</td>
					
						<td>${fieldValue(bean: localDoacaoInstance, field: "logradouro")}</td>
					
						<td>${fieldValue(bean: localDoacaoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: localDoacaoInstance, field: "numero")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${localDoacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

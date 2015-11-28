
<%@ page import="org.disksol.Doacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'doacao.label', default: 'Doacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-doacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-doacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="doacao.categoria.label" default="Categoria" /></th>
					
						<g:sortableColumn property="date" title="${message(code: 'doacao.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'doacao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'doacao.quantidade.label', default: 'Quantidade')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${doacaoInstanceList}" status="i" var="doacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${doacaoInstance.id}">${fieldValue(bean: doacaoInstance, field: "categoria")}</g:link></td>
					
						<td><g:formatDate date="${doacaoInstance.date}" /></td>
					
						<td>${fieldValue(bean: doacaoInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: doacaoInstance, field: "quantidade")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${doacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

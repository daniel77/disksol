
<%@ page import="org.disksol.ItemNecessidade" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemNecessidade.label', default: 'ItemNecessidade')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-itemNecessidade" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-itemNecessidade" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'itemNecessidade.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'itemNecessidade.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'itemNecessidade.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'itemNecessidade.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemNecessidadeInstanceList}" status="i" var="itemNecessidadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemNecessidadeInstance.id}">${fieldValue(bean: itemNecessidadeInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: itemNecessidadeInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: itemNecessidadeInstance, field: "quantidade")}</td>
					
						<td>${fieldValue(bean: itemNecessidadeInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemNecessidadeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

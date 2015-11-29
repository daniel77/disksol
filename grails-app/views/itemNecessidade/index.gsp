
<%@ page import="org.disksol.ItemNecessidade"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'itemNecessidade.label', default: 'Requisição')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-itemNecessidade" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-itemNecessidade" class="content scaffold-list"
		role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="nome"
						title="${message(code: 'itemNecessidade.nome.label', default: 'Nome')}" />

					<g:sortableColumn property="quantidade"
						title="${message(code: 'itemNecessidade.quantidade.label', default: 'Quantidade')}" />

					<g:sortableColumn property="status"
						title="${message(code: 'itemNecessidade.status.label', default: 'Status')}" />

					<g:sortableColumn property="descricao"
						title="${message(code: 'itemNecessidade.descricao.label', default: 'Descrição')}" />

					<th><g:message code="itemNecessidade.categoria.label"
							default="Categoria" /></th>
					<th><g:message code="itemNecessidade.evento.label"
							default="Evento" /></th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${itemNecessidadeInstanceList}" status="i"
					var="itemNecessidadeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							${fieldValue(bean: itemNecessidadeInstance, field: "nome")}
						</td>
	
						<td>
							${fieldValue(bean: itemNecessidadeInstance, field: "quantidade")}
						</td>

						<td>
							${fieldValue(bean: itemNecessidadeInstance, field: "status")}
						</td>

						<td>
							${fieldValue(bean: itemNecessidadeInstance, field: "descricao")}
						</td>

						<td><g:link action="show" id="${itemNecessidadeInstance.id}">
								${fieldValue(bean: itemNecessidadeInstance, field: "categoria")}
							</g:link></td>

						<td>
							${fieldValue(bean: itemNecessidadeInstance, field: "evento")}
						</td>
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

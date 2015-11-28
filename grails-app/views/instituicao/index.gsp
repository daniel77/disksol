
<%@ page import="org.disksol.Instituicao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'instituicao.label', default: 'Instituicao')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-instituicao" class="skip" tabindex="-1"><g:message
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
	<div id="list-instituicao" class="content scaffold-list" role="main">
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
						title="${message(code: 'instituicao.nome.label', default: 'Nome')}" />
					<g:sortableColumn property="cnpj"
						title="${message(code: 'instituicao.cnpj.label', default: 'Cnpj')}" />

					<g:sortableColumn property="telefone"
						title="${message(code: 'instituicao.telefone.label', default: 'Telefone')}" />

					<g:sortableColumn property="descricao"
						title="${message(code: 'instituicao.descricao.label', default: 'Descrição')}" />
				</tr>
			</thead>
			<tbody>
				<g:each in="${instituicaoInstanceList}" status="i"
					var="instituicaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
							${fieldValue(bean: instituicaoInstance, field: "nome")}
						</td>

						<td><g:link action="show" id="${instituicaoInstance.id}">
								${fieldValue(bean: instituicaoInstance, field: "cnpj")}
							</g:link></td>

						<td>
							${fieldValue(bean: instituicaoInstance, field: "telefone")}
						</td>

						<td>
							${fieldValue(bean: instituicaoInstance, field: "descricao")}
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${instituicaoInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>

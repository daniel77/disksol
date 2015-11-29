
<%@ page import="org.disksol.Evento"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'evento.label', default: 'Evento')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-evento" class="skip" tabindex="-1"><g:message
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
	
	<div>
		<g:form action='index' name='eventoIndexForm'>
				<table>
						<tr>
							<td>Evento:</td>
							<td colspan='3'><g:textField name='nome' size='50'
									maxlength='255' autocomplete='off' value='${nome}' />
									<g:submitButton name="index"  elementId='index' form='eventoIndexForm' class="save" value="Pesquisar" /></td>
						</tr>
				</table>
			</g:form>
		</div>
	
	
	<div id="list-evento" class="content scaffold-list" role="main">
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
						title="${message(code: 'evento.nome.label', default: 'Nome')}" />


					<g:sortableColumn property="dataInicio"
						title="${message(code: 'evento.dataInicio.label', default: 'Data Início')}" />

					<g:sortableColumn property="dataTermino"
						title="${message(code: 'evento.dataTermino.label', default: 'Data Término')}" />

					<g:sortableColumn property="descricao"
						title="${message(code: 'evento.descricao.label', default: 'Descrição')}" />

					<th><g:message code="evento.author.label" default="Autor" /></th>

				</tr>
			</thead>
			<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
							${fieldValue(bean: eventoInstance, field: "nome")}
						</td>
						<td><g:formatDate date="${eventoInstance.dataInicio}" format="dd/MM/yyyy" /></td>

						<td><g:formatDate date="${eventoInstance.dataTermino}" format="dd/MM/yyyy" /></td>

						<td>
							${fieldValue(bean: eventoInstance, field: "descricao")}
						</td>

						<td><g:link action="show" id="${eventoInstance.id}">
								${fieldValue(bean: eventoInstance, field: "author")}
							</g:link></td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${eventoInstanceCount ?: 0}" />
		</div>
	</div>
</body>
</html>

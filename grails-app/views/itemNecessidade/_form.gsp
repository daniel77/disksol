<%@ page import="org.disksol.ItemNecessidade"%>


<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'nome', 'error')} ">
	<label for="nome"> <g:message code="itemNecessidade.nome.label"
			default="Nome" />

	</label>
	<g:textField name="nome" value="${itemNecessidadeInstance?.nome}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'quantidade', 'error')} ">
	<label for="quantidade"> <g:message
			code="itemNecessidade.quantidade.label" default="Quantidade" />

	</label>
	<g:field type="number" name="quantidade"
		value="${itemNecessidadeInstance.quantidade}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'status', 'error')} ">
	<label for="status"> <g:message
			code="itemNecessidade.status.label" default="Status" />

	</label>
	<g:select name="status"
		from="${org.disksol.StatusNecessidade?.values()}"
		keys="${org.disksol.StatusNecessidade.values()*.name()}" required=""
		value="${itemNecessidadeInstance?.status?.name()}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'categoria', 'error')} ">
	<label for="categoria"> <g:message
			code="itemNecessidade.categoria.label" default="Categoria" />

	</label>
	<g:select id="categoria" name="categoria.id"
		from="${org.disksol.Categoria.list()}" optionKey="id" required=""
		value="${itemNecessidadeInstance?.categoria?.id}" class="many-to-one" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'descricao', 'error')} ">
	<label for="descricao"> <g:message
			code="itemNecessidade.descricao.label" default="Descrição" />

	</label>
	<g:textArea name="descricao"
		value="${itemNecessidadeInstance?.descricao}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'evento', 'error')} ">
	<label for="evento"> <g:message
			code="itemNecessidade.evento.label" default="Evento" />

	</label>
	<g:select id="evento" name="evento.id"
		from="${org.disksol.Evento.list()}" optionKey="id" required=""
		value="${itemNecessidadeInstance?.evento?.id}" class="many-to-one" />

</div>


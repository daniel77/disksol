<%@ page import="org.disksol.Evento"%>

<div
	class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nome', 'error')} ">
	<label for="nome"> <g:message code="evento.nome.label"
			default="Nome" />

	</label>
	<g:textField name="nome" value="${eventoInstance?.nome}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataInicio', 'error')} ">
	<label for="dataInicio"> <g:message
			code="evento.dataInicio.label" default="Data Início" />

	</label>
	<g:datePicker name="dataInicio" precision="day"
		value="${eventoInstance?.dataInicio}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataTermino', 'error')} ">
	<label for="dataTermino"> <g:message
			code="evento.dataTermino.label" default="Data Término" />

	</label>
	<g:datePicker name="dataTermino" precision="day"
		value="${eventoInstance?.dataTermino}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descricao', 'error')} ">
	<label for="descricao"> <g:message
			code="evento.descricao.label" default="Descrição" />

	</label>
	<g:textArea name="descricao" value="${eventoInstance?.descricao}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'author', 'error')} ">
	<label for="author"> <g:message code="evento.author.label"
			default="Autor" />

	</label>
	<g:select id="author" name="author.id"
		from="${org.disksol.Instituicao.list()}" optionKey="id" required=""
		value="${eventoInstance?.author?.id}" class="many-to-one" />

</div>


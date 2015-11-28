<%@ page import="org.disksol.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'author', 'error')} ">
	<label for="author">
		<g:message code="evento.author.label" default="Author" />
		
	</label>
	<g:select id="author" name="author.id" from="${org.disksol.Instituicao.list()}" optionKey="id" required="" value="${eventoInstance?.author?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataInicio', 'error')} ">
	<label for="dataInicio">
		<g:message code="evento.dataInicio.label" default="Data Inicio" />
		
	</label>
	<g:datePicker name="dataInicio" precision="day" value="${eventoInstance?.dataInicio}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'dataTermino', 'error')} ">
	<label for="dataTermino">
		<g:message code="evento.dataTermino.label" default="Data Termino" />
		
	</label>
	<g:datePicker name="dataTermino" precision="day" value="${eventoInstance?.dataTermino}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="evento.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${eventoInstance?.descricao}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'locais', 'error')} ">
	<label for="locais">
		<g:message code="evento.locais.label" default="Locais" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.locais?}" var="l">
    <li><g:link controller="localDoacao" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="localDoacao" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'localDoacao.label', default: 'LocalDoacao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'necessidades', 'error')} ">
	<label for="necessidades">
		<g:message code="evento.necessidades.label" default="Necessidades" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${eventoInstance?.necessidades?}" var="n">
    <li><g:link controller="itemNecessidade" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="itemNecessidade" action="create" params="['evento.id': eventoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'itemNecessidade.label', default: 'ItemNecessidade')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="evento.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${eventoInstance?.nome}" />

</div>


<%@ page import="org.disksol.Instituicao" %>



<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'cnpj', 'error')} ">
	<label for="cnpj">
		<g:message code="instituicao.cnpj.label" default="Cnpj" />
		
	</label>
	<g:textField name="cnpj" value="${instituicaoInstance?.cnpj}" />

</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="instituicao.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${instituicaoInstance?.descricao}" />

</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'eventos', 'error')} ">
	<label for="eventos">
		<g:message code="instituicao.eventos.label" default="Eventos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instituicaoInstance?.eventos?}" var="e">
    <li><g:link controller="evento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="evento" action="create" params="['instituicao.id': instituicaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evento.label', default: 'Evento')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="instituicao.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${instituicaoInstance?.nome}" />

</div>

<div class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="instituicao.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${instituicaoInstance?.telefone}" />

</div>


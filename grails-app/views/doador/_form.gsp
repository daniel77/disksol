<%@ page import="org.disksol.Doador" %>



<div class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'cidade', 'error')} ">
	<label for="cidade">
		<g:message code="doador.cidade.label" default="Cidade" />
		
	</label>
	<g:textField name="cidade" value="${doadorInstance?.cidade}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'doacoes', 'error')} ">
	<label for="doacoes">
		<g:message code="doador.doacoes.label" default="Doacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${doadorInstance?.doacoes?}" var="d">
    <li><g:link controller="doacao" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="doacao" action="create" params="['doador.id': doadorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'doacao.label', default: 'Doacao')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="doador.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${doadorInstance?.nome}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'telefone', 'error')} ">
	<label for="telefone">
		<g:message code="doador.telefone.label" default="Telefone" />
		
	</label>
	<g:textField name="telefone" value="${doadorInstance?.telefone}" />

</div>


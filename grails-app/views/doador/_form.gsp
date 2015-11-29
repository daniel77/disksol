<%@ page import="org.disksol.Doador"%>

<div
	class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'nome', 'error')} ">
	<label for="nome"> <g:message code="doador.nome.label"
			default="Nome" />

	</label>
	<g:textField name="nome" value="${doadorInstance?.nome}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'telefone', 'error')} ">
	<label for="telefone"> <g:message code="doador.telefone.label"
			default="Telefone" />

	</label>
	<g:textField name="telefone" value="${doadorInstance?.telefone}" />

</div>
<div
	class="fieldcontain ${hasErrors(bean: doadorInstance, field: 'cidade', 'error')} ">
	<label for="cidade"> <g:message code="doador.cidade.label"
			default="Cidade" />

	</label>
	<g:textField name="cidade" value="${doadorInstance?.cidade}" />

</div>





<%@ page import="org.disksol.Instituicao"%>

<div
	class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'nome', 'error')} ">
	<label for="nome"> <g:message code="instituicao.nome.label"
			default="Nome" />

	</label>
	<g:textField name="nome" value="${instituicaoInstance?.nome}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'cnpj', 'error')} ">
	<label for="cnpj"> <g:message code="instituicao.cnpj.label"
			default="Cnpj" />

	</label>
	<g:textField name="cnpj" value="${instituicaoInstance?.cnpj}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'telefone', 'error')} ">
	<label for="telefone"> <g:message
			code="instituicao.telefone.label" default="Telefone" />

	</label>
	<g:textField name="telefone" value="${instituicaoInstance?.telefone}" />

</div>

<div
	class="fieldcontain ${hasErrors(bean: instituicaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao"> <g:message
			code="instituicao.descricao.label" default="Descrição" />

	</label>
	<g:textArea name="descricao" value="${instituicaoInstance?.descricao}" />

</div>





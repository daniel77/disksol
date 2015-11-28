<%@ page import="org.disksol.LocalDoacao" %>



<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'bairro', 'error')} ">
	<label for="bairro">
		<g:message code="localDoacao.bairro.label" default="Bairro" />
		
	</label>
	<g:textField name="bairro" value="${localDoacaoInstance?.bairro}" />

</div>

<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'cep', 'error')} ">
	<label for="cep">
		<g:message code="localDoacao.cep.label" default="Cep" />
		
	</label>
	<g:textField name="cep" value="${localDoacaoInstance?.cep}" />

</div>

<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'complemento', 'error')} ">
	<label for="complemento">
		<g:message code="localDoacao.complemento.label" default="Complemento" />
		
	</label>
	<g:textField name="complemento" value="${localDoacaoInstance?.complemento}" />

</div>

<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'logradouro', 'error')} ">
	<label for="logradouro">
		<g:message code="localDoacao.logradouro.label" default="Logradouro" />
		
	</label>
	<g:textField name="logradouro" value="${localDoacaoInstance?.logradouro}" />

</div>

<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="localDoacao.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${localDoacaoInstance?.nome}" />

</div>

<div class="fieldcontain ${hasErrors(bean: localDoacaoInstance, field: 'numero', 'error')} ">
	<label for="numero">
		<g:message code="localDoacao.numero.label" default="Numero" />
		
	</label>
	<g:textField name="numero" value="${localDoacaoInstance?.numero}" />

</div>


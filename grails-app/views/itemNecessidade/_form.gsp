<%@ page import="org.disksol.ItemNecessidade" %>



<div class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="itemNecessidade.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${itemNecessidadeInstance?.descricao}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="itemNecessidade.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${itemNecessidadeInstance?.nome}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'quantidade', 'error')} ">
	<label for="quantidade">
		<g:message code="itemNecessidade.quantidade.label" default="Quantidade" />
		
	</label>
	<g:field type="number" name="quantidade" value="${itemNecessidadeInstance.quantidade}" />

</div>

<div class="fieldcontain ${hasErrors(bean: itemNecessidadeInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="itemNecessidade.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${org.disksol.StatusNecessidade?.values()}" keys="${org.disksol.StatusNecessidade.values()*.name()}" required="" value="${itemNecessidadeInstance?.status?.name()}" />

</div>


<%@ page import="org.disksol.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="categoria.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${categoriaInstance?.descricao}" />

</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="categoria.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${categoriaInstance?.nome}" />

</div>


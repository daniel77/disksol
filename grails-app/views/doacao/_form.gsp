<%@ page import="org.disksol.Doacao" %>



<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="doacao.categoria.label" default="Categoria" />
		
	</label>
	<g:select id="categoria" name="categoria.id" from="${org.disksol.Categoria.list()}" optionKey="id" required="" value="${doacaoInstance?.categoria?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="doacao.date.label" default="Date" />
		
	</label>
	<g:datePicker name="date" precision="day" value="${doacaoInstance?.date}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'doador', 'error')} ">
	<label for="doador">
		<g:message code="doacao.doador.label" default="Doador" />
		
	</label>
	<g:select id="doador" name="doador.id" from="${org.disksol.Doador.list()}" optionKey="id" required="" value="${doacaoInstance?.doador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="doacao.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${doacaoInstance?.nome}" />

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'quantidade', 'error')} ">
	<label for="quantidade">
		<g:message code="doacao.quantidade.label" default="Quantidade" />
		
	</label>
	<g:field type="number" name="quantidade" value="${doacaoInstance.quantidade}" />

</div>


<%@ page import="org.disksol.Doacao" %>



<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'avatar1', 'error')} ">
	<label for="avatar1">
		<g:message code="doacao.avatar1.label" default="Avatar1" />
		
	</label>
	<input type="file" id="avatar1" name="avatar1" />

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'avatar2', 'error')} ">
	<label for="avatar2">
		<g:message code="doacao.avatar2.label" default="Avatar2" />
		
	</label>
	<input type="file" id="avatar2" name="avatar2" />

</div>

<div class="fieldcontain ${hasErrors(bean: doacaoInstance, field: 'avatar3', 'error')} ">
	<label for="avatar3">
		<g:message code="doacao.avatar3.label" default="Avatar3" />
		
	</label>
	<input type="file" id="avatar3" name="avatar3" />

</div>

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


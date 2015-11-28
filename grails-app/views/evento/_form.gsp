<%@ page import="org.disksol.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'local', 'error')} ">
	<label for="local">
		<g:message code="evento.local.label" default="Local" />
		
	</label>
	<g:textField name="local" value="${eventoInstance?.local}" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nome', 'error')} ">
	<label for="nome">
		<g:message code="evento.nome.label" default="Nome" />
		
	</label>
	<g:textField name="nome" value="${eventoInstance?.nome}" />

</div>



<%@ page import="org.disksol.Doacao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'doacao.label', default: 'Doação')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>

<link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />
<style type="text/css">
    a.fancybox img {
        border: none;
        box-shadow: 0 1px 7px rgba(0,0,0,0.6);
        -o-transform: scale(1,1); -ms-transform: scale(1,1); -moz-transform: scale(1,1); -webkit-transform: scale(1,1); transform: scale(1,1); -o-transition: all 0.2s ease-in-out; -ms-transition: all 0.2s ease-in-out; -moz-transition: all 0.2s ease-in-out; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;
    } 
    a.fancybox:hover img {
        position: relative; z-index: 999; -o-transform: scale(1.03,1.03); -ms-transform: scale(1.03,1.03); -moz-transform: scale(1.03,1.03); -webkit-transform: scale(1.03,1.03); transform: scale(1.03,1.03);
    }
</style>

</head>
<body>

<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
    $(function($){
        var addToAll = false;
        var gallery = true;
        var titlePosition = 'inside';
        $(addToAll ? 'img' : 'img.fancybox').each(function(){
            var $this = $(this);
            var title = $this.attr('title');
            var src = $this.attr('data-big') || $this.attr('src');
            var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
            $this.wrap(a);
        });
        if (gallery)
            $('a.fancybox').attr('rel', 'fancyboxgallery');
        $('a.fancybox').fancybox({
            titlePosition: titlePosition
        });
    });
    $.noConflict();
</script>

	<a href="#show-doacao" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-doacao" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list doacao">

			<g:if test="${doacaoInstance?.nome}">
				<li class="fieldcontain"><span id="nome-label"
					class="property-label"><g:message code="doacao.nome.label"
							default="Nome" /></span> <span class="property-value"
					aria-labelledby="nome-label"><g:fieldValue
							bean="${doacaoInstance}" field="nome" /></span></li>
			</g:if>
			
			<g:if test="${doacaoInstance?.quantidade}">
				<li class="fieldcontain"><span id="quantidade-label"
					class="property-label"><g:message
							code="doacao.quantidade.label" default="Quantidade" /></span> <span
					class="property-value" aria-labelledby="quantidade-label"><g:fieldValue
							bean="${doacaoInstance}" field="quantidade" /></span></li>
			</g:if>

			<g:if test="${doacaoInstance?.date}">
				<li class="fieldcontain"><span id="date-label"
					class="property-label"><g:message code="doacao.date.label"
							default="Data" /></span> <span class="property-value"
					aria-labelledby="date-label"><g:formatDate
							date="${doacaoInstance?.date}" format="dd/MM/yyyy" /></span></li>
			</g:if>

			<g:if test="${doacaoInstance?.categoria}">
				<li class="fieldcontain"><span id="categoria-label"
					class="property-label"><g:message
							code="doacao.categoria.label" default="Categoria" /></span> <span
					class="property-value" aria-labelledby="categoria-label"><g:link
							controller="categoria" action="show"
							id="${doacaoInstance?.categoria?.id}">
							${doacaoInstance?.categoria?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>

			<g:if test="${doacaoInstance?.doador}">
				<li class="fieldcontain"><span id="doador-label"
					class="property-label"><g:message code="doacao.doador.label"
							default="Doador" /></span> <span class="property-value"
					aria-labelledby="doador-label"><g:link controller="doador"
							action="show" id="${doacaoInstance?.doador?.id}">
							${doacaoInstance?.doador?.encodeAsHTML()}
						</g:link></span></li>
			</g:if>
			
			
		<li class="fieldcontain">
			<li class="fieldcontain"><span id="doador-label"
					class="property-label">Fotos:</span>
					<span class="property-value"
					aria-labelledby="date-label">
					
											<g:if test="${doacaoInstance?.avatar1}">
							<img class="avatar fancybox" 
								src="${createLink(controller:'doacao', action:'avatar1_image', id:doacaoInstance.ident())}" />
						</g:if>
			
						<g:if test="${doacaoInstance?.avatar2}"> <img class="avatar fancybox"
								src="${createLink(controller:'doacao', action:'avatar2_image', id:doacaoInstance.ident())}" />
						</g:if>
			
						<g:if test="${doacaoInstance?.avatar3}"> <img class="avatar fancybox"
								src="${createLink(controller:'doacao', action:'avatar3_image', id:doacaoInstance.ident())}" />
						</g:if>
						</span>
						</li>
							


		</ol>
		<g:form url="[resource:doacaoInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${doacaoInstance}">
					<g:message code="default.button.edit.label" default="Editar" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Excluir')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>

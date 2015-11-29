package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EventoController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		if(params.nome != null && !params.nome.equals("")){
			def lista = Evento.list().find{evento -> evento?.nome?.toLowerCase().contains(params.nome.toString().trim().toLowerCase())}
			return [eventoInstanceList: lista, eventoInstanceCount: lista.collect().size() ,searched: lista.collect().size() > 0]
		}
		else{
			params.max = Math.min(max ?: 10, 100)
			respond Evento.list(params), model:[eventoInstanceCount: Evento.count()]
		}
	}

	def show(Evento eventoInstance) {
		respond eventoInstance
	}

	def create() {
		respond new Evento(params)
	}

	def search(){

		println(params);
		if(params.nome != null){

			def lista = Evento.findByNomeLike( "%" + (new Evento( params).nome) + "%" )

			return [eventoInstanceList: lista, eventoInstanceCount: lista.collect().size() ,searched: lista.collect().size() > 0]
		}
		else{
			println("entrou " + params["nome-teste"])
			respond new Evento(params)
		}

		//respond new Evento(params)
	}

	def search2(){
		println(params.query);
		def lista = Evento.findByNome(params.query["nome"])

		respond lista // Evento.list().find{item -> item.nome.contains((new Evento(params).nome))};
	}

	@Transactional
	def save(Evento eventoInstance) {
		if (eventoInstance == null) {
			notFound()
			return
		}

		if (eventoInstance.hasErrors()) {
			respond eventoInstance.errors, view:'create'
			return
		}

		eventoInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'evento.label', default: 'Evento'),
					eventoInstance.id
				])
				redirect eventoInstance
			}
			'*' { respond eventoInstance, [status: CREATED] }
		}
	}

	def edit(Evento eventoInstance) {
		respond eventoInstance
	}

	@Transactional
	def update(Evento eventoInstance) {
		if (eventoInstance == null) {
			notFound()
			return
		}

		if (eventoInstance.hasErrors()) {
			respond eventoInstance.errors, view:'edit'
			return
		}

		eventoInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Evento.label', default: 'Evento'),
					eventoInstance.id
				])
				redirect eventoInstance
			}
			'*'{ respond eventoInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Evento eventoInstance) {

		if (eventoInstance == null) {
			notFound()
			return
		}

		eventoInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Evento.label', default: 'Evento'),
					eventoInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'evento.label', default: 'Evento'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}

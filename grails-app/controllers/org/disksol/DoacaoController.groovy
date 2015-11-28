package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DoacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Doacao.list(params), model:[doacaoInstanceCount: Doacao.count()]
    }

    def show(Doacao doacaoInstance) {
        respond doacaoInstance
    }

    def create() {
        respond new Doacao(params)
    }

    @Transactional
    def save(Doacao doacaoInstance) {
        if (doacaoInstance == null) {
            notFound()
            return
        }

        if (doacaoInstance.hasErrors()) {
            respond doacaoInstance.errors, view:'create'
            return
        }

        doacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'doacao.label', default: 'Doacao'), doacaoInstance.id])
                redirect doacaoInstance
            }
            '*' { respond doacaoInstance, [status: CREATED] }
        }
    }

    def edit(Doacao doacaoInstance) {
        respond doacaoInstance
    }
	
	def avatar1_image() {
		def avatarUser =  Doacao.get(params.id)
		if (!avatarUser || !avatarUser.avatar1 ) {
		  response.sendError(404)
		  return
		}
	
		response.contentLength = avatarUser.avatar1.size()
		OutputStream out = response.outputStream
		out.write(avatarUser.avatar1)
		out.close()
	  }
	
	def avatar2_image() {
		def avatarUser =  Doacao.get(params.id)
		if (!avatarUser || !avatarUser.avatar2 ) {
		  response.sendError(404)
		  return
		}
	
		response.contentLength = avatarUser.avatar2.size()
		OutputStream out = response.outputStream
		out.write(avatarUser.avatar2)
		out.close()
	  }
	
	def avatar3_image() {
		def avatarUser =  Doacao.get(params.id)
		if (!avatarUser || !avatarUser.avatar3 ) {
		  response.sendError(404)
		  return
		}
	
		response.contentLength = avatarUser.avatar3.size()
		OutputStream out = response.outputStream
		out.write(avatarUser.avatar3)
		out.close()
	  }
	
	
    @Transactional
    def update(Doacao doacaoInstance) {
        if (doacaoInstance == null) {
            notFound()
            return
        }

        if (doacaoInstance.hasErrors()) {
            respond doacaoInstance.errors, view:'edit'
            return
        }

        doacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Doacao.label', default: 'Doacao'), doacaoInstance.id])
                redirect doacaoInstance
            }
            '*'{ respond doacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Doacao doacaoInstance) {

        if (doacaoInstance == null) {
            notFound()
            return
        }

        doacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Doacao.label', default: 'Doacao'), doacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'doacao.label', default: 'Doacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

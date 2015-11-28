package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DoadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Doador.list(params), model:[doadorInstanceCount: Doador.count()]
    }

    def show(Doador doadorInstance) {
        respond doadorInstance
    }

    def create() {
        respond new Doador(params)
    }

    @Transactional
    def save(Doador doadorInstance) {
        if (doadorInstance == null) {
            notFound()
            return
        }

        if (doadorInstance.hasErrors()) {
            respond doadorInstance.errors, view:'create'
            return
        }

        doadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'doador.label', default: 'Doador'), doadorInstance.id])
                redirect doadorInstance
            }
            '*' { respond doadorInstance, [status: CREATED] }
        }
    }

    def edit(Doador doadorInstance) {
        respond doadorInstance
    }

    @Transactional
    def update(Doador doadorInstance) {
        if (doadorInstance == null) {
            notFound()
            return
        }

        if (doadorInstance.hasErrors()) {
            respond doadorInstance.errors, view:'edit'
            return
        }

        doadorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Doador.label', default: 'Doador'), doadorInstance.id])
                redirect doadorInstance
            }
            '*'{ respond doadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Doador doadorInstance) {

        if (doadorInstance == null) {
            notFound()
            return
        }

        doadorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Doador.label', default: 'Doador'), doadorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'doador.label', default: 'Doador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

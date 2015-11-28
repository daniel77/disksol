package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LocalDoacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond LocalDoacao.list(params), model:[localDoacaoInstanceCount: LocalDoacao.count()]
    }

    def show(LocalDoacao localDoacaoInstance) {
        respond localDoacaoInstance
    }

    def create() {
        respond new LocalDoacao(params)
    }

    @Transactional
    def save(LocalDoacao localDoacaoInstance) {
        if (localDoacaoInstance == null) {
            notFound()
            return
        }

        if (localDoacaoInstance.hasErrors()) {
            respond localDoacaoInstance.errors, view:'create'
            return
        }

        localDoacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'localDoacao.label', default: 'LocalDoacao'), localDoacaoInstance.id])
                redirect localDoacaoInstance
            }
            '*' { respond localDoacaoInstance, [status: CREATED] }
        }
    }

    def edit(LocalDoacao localDoacaoInstance) {
        respond localDoacaoInstance
    }

    @Transactional
    def update(LocalDoacao localDoacaoInstance) {
        if (localDoacaoInstance == null) {
            notFound()
            return
        }

        if (localDoacaoInstance.hasErrors()) {
            respond localDoacaoInstance.errors, view:'edit'
            return
        }

        localDoacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'LocalDoacao.label', default: 'LocalDoacao'), localDoacaoInstance.id])
                redirect localDoacaoInstance
            }
            '*'{ respond localDoacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(LocalDoacao localDoacaoInstance) {

        if (localDoacaoInstance == null) {
            notFound()
            return
        }

        localDoacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'LocalDoacao.label', default: 'LocalDoacao'), localDoacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'localDoacao.label', default: 'LocalDoacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

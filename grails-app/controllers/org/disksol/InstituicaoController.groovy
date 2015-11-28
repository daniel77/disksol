package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InstituicaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Instituicao.list(params), model:[instituicaoInstanceCount: Instituicao.count()]
    }

    def show(Instituicao instituicaoInstance) {
        respond instituicaoInstance
    }

    def create() {
        respond new Instituicao(params)
    }

    @Transactional
    def save(Instituicao instituicaoInstance) {
        if (instituicaoInstance == null) {
            notFound()
            return
        }

        if (instituicaoInstance.hasErrors()) {
            respond instituicaoInstance.errors, view:'create'
            return
        }

        instituicaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'instituicao.label', default: 'Instituicao'), instituicaoInstance.id])
                redirect instituicaoInstance
            }
            '*' { respond instituicaoInstance, [status: CREATED] }
        }
    }

    def edit(Instituicao instituicaoInstance) {
        respond instituicaoInstance
    }

    @Transactional
    def update(Instituicao instituicaoInstance) {
        if (instituicaoInstance == null) {
            notFound()
            return
        }

        if (instituicaoInstance.hasErrors()) {
            respond instituicaoInstance.errors, view:'edit'
            return
        }

        instituicaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Instituicao.label', default: 'Instituicao'), instituicaoInstance.id])
                redirect instituicaoInstance
            }
            '*'{ respond instituicaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Instituicao instituicaoInstance) {

        if (instituicaoInstance == null) {
            notFound()
            return
        }

        instituicaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Instituicao.label', default: 'Instituicao'), instituicaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'instituicao.label', default: 'Instituicao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

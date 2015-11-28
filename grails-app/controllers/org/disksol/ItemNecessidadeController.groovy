package org.disksol



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ItemNecessidadeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemNecessidade.list(params), model:[itemNecessidadeInstanceCount: ItemNecessidade.count()]
    }

    def show(ItemNecessidade itemNecessidadeInstance) {
        respond itemNecessidadeInstance
    }

    def create() {
        respond new ItemNecessidade(params)
    }

    @Transactional
    def save(ItemNecessidade itemNecessidadeInstance) {
        if (itemNecessidadeInstance == null) {
            notFound()
            return
        }

        if (itemNecessidadeInstance.hasErrors()) {
            respond itemNecessidadeInstance.errors, view:'create'
            return
        }

        itemNecessidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemNecessidade.label', default: 'ItemNecessidade'), itemNecessidadeInstance.id])
                redirect itemNecessidadeInstance
            }
            '*' { respond itemNecessidadeInstance, [status: CREATED] }
        }
    }

    def edit(ItemNecessidade itemNecessidadeInstance) {
        respond itemNecessidadeInstance
    }

    @Transactional
    def update(ItemNecessidade itemNecessidadeInstance) {
        if (itemNecessidadeInstance == null) {
            notFound()
            return
        }

        if (itemNecessidadeInstance.hasErrors()) {
            respond itemNecessidadeInstance.errors, view:'edit'
            return
        }

        itemNecessidadeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemNecessidade.label', default: 'ItemNecessidade'), itemNecessidadeInstance.id])
                redirect itemNecessidadeInstance
            }
            '*'{ respond itemNecessidadeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemNecessidade itemNecessidadeInstance) {

        if (itemNecessidadeInstance == null) {
            notFound()
            return
        }

        itemNecessidadeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemNecessidade.label', default: 'ItemNecessidade'), itemNecessidadeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemNecessidade.label', default: 'ItemNecessidade'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

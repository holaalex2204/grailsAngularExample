package mx.saccsa.phoneCat.domain


import grails.converters.JSON
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PhoneHeaderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PhoneHeader.list(params), model:[phoneHeaderInstanceCount: PhoneHeader.count()]
    }
    def listJSON(Integer max)
    {
        params.max = Math.min(max ?: 10, 100)        
        render(PhoneHeader.list(params) as JSON)
    }
    def show(PhoneHeader phoneHeaderInstance) {
        respond phoneHeaderInstance
    }

    def create() {
        respond new PhoneHeader(params)
    }

    @Transactional
    def save(PhoneHeader phoneHeaderInstance) {
        if (phoneHeaderInstance == null) {
            notFound()
            return
        }

        if (phoneHeaderInstance.hasErrors()) {
            respond phoneHeaderInstance.errors, view:'create'
            return
        }

        phoneHeaderInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'phoneHeaderInstance.label', default: 'PhoneHeader'), phoneHeaderInstance.id])
                redirect phoneHeaderInstance
            }
            '*' { respond phoneHeaderInstance, [status: CREATED] }
        }
    }

    def edit(PhoneHeader phoneHeaderInstance) {
        respond phoneHeaderInstance
    }

    @Transactional
    def update(PhoneHeader phoneHeaderInstance) {
        if (phoneHeaderInstance == null) {
            notFound()
            return
        }

        if (phoneHeaderInstance.hasErrors()) {
            respond phoneHeaderInstance.errors, view:'edit'
            return
        }

        phoneHeaderInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PhoneHeader.label', default: 'PhoneHeader'), phoneHeaderInstance.id])
                redirect phoneHeaderInstance
            }
            '*'{ respond phoneHeaderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PhoneHeader phoneHeaderInstance) {

        if (phoneHeaderInstance == null) {
            notFound()
            return
        }

        phoneHeaderInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PhoneHeader.label', default: 'PhoneHeader'), phoneHeaderInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'phoneHeaderInstance.label', default: 'PhoneHeader'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

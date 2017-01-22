package au.com.pwc.forex

class TransferController {

    def index() {
        if (!session.user) {
            redirect(uri: '/')
        }

        render(view: 'index')
    }

    def beforeInterceptor = {
        if (!session.user) {
            redirect(uri: '/')
        }
    }
}

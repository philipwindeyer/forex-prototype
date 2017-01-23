package au.com.pwc.forex

class AuthController {

    def index() {
        if (session.user && session.user.verified) {
            log.info("Logged in already. Redirecting to transfer")
            redirect(controller: 'transfer')
            return
        }

        render(view: 'index')
    }

    def login() {
        // Faked for prototype purposes
        final String HODOR = "Hodor"
        User user = User.findByFirstNameAndLastName(HODOR, HODOR)

        if (user && user.verified) {
            session.user = user
            redirect(controller: 'transfer')

        } else {
            Date dob = new Date().minus(14600)

            user = new User(
                    firstName: HODOR,
                    lastName: HODOR,
                    dateOfBirth: dob, // 40 years old
                    emailAddress: "hodor@gmail.com"
            )

            session.user = user
            redirect(action: 'verify')
        }
    }

    def verify() {
        if (!session.user) {
            redirect(uri: '/')
            return
        }

        render(view: 'verify')
    }

    def complete() {
        User user = session.user
        user.verified = true
        user.save()

        redirect(controller: 'transfer', action: 'index', params: [newreg: true])
    }

    def logout() {
        session.user = null
        redirect(uri: '/')
    }
}

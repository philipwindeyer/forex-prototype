package au.com.pwc.forex

class TransferController {

    HttpService httpService
    RatesService ratesService

    def index() {
        List<Currency> currencies = Currency.listOrderByCountry()

        render(view: 'index', model: [currencies: currencies])
    }

    def amount() {
        Currency from = Currency.get(params.from)
        Currency to = Currency.get(params.to)

        Configuration configuration = Configuration.current()

        log.info(String.valueOf(configuration))

        from.value = ratesService.markup(httpService.get("${configuration.baseUrl}/latest?base=${from.code}&symbols=${to.code}").rates["${to.code}"])
        to.value = ratesService.markup(httpService.get("${configuration.baseUrl}/latest?base=${to.code}&symbols=${from.code}").rates["${from.code}"])

        render(view: 'amount', model: [from: from, to: to, configuration: configuration])
    }

    def from() {
        render(view: 'from')
    }

    def to() {
        render(view: 'to')
    }

    def pleasewait() {
        render(view: 'pleasewait')
    }

    def accountconfirm() {
        render(view: 'accountconfirm')
    }

    def confirm() {
        render(view: 'confirm')
    }

    def complete() {
        render(view: 'complete')
    }

    def beforeInterceptor = {
        session.configuration = Configuration.current()

        if (!session.user) {
            redirect(uri: '/')
        }
    }
}

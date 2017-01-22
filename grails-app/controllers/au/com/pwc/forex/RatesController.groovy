package au.com.pwc.forex

import java.text.SimpleDateFormat

class RatesController {

    HttpService httpService

    def index() {
        Configuration configuration = Configuration.current()

        String url = "${configuration.baseUrl}?base="

        if (params.base) {
            url += params.base

        } else {
            url += "AUD"
        }

        def response = httpService.get(url)

        String base = "1.00 ${response.base}"
        String date = g.formatDate(format: "dd/MM/yyyy", date: new SimpleDateFormat("yyyy-MM-dd").parse(response.date))

        List<Currency> rates = []

        response.rates.each {
            Currency currency = Currency.findByCode(it.key)

            if (currency) {
                currency.value = it.value
                rates.add(currency)
            }
        }

        render(view: 'index', model: [base: base, date: date, rates: rates, configuration: Configuration.current()])
    }
}

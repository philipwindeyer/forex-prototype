package au.com.pwc.forex

class RatesService {

    def markup(BigDecimal rate) {
        return rate + (rate * Configuration.current().markup)
    }
}

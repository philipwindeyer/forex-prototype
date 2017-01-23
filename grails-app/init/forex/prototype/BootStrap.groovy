package forex.prototype

import au.com.pwc.forex.Configuration
import au.com.pwc.forex.Currency

class BootStrap {

    def init = { servletContext ->
        Configuration.current()

        // This is to match friendly names to those returned from the fixer API
        if (Currency.count() == 0) {
            new Currency(name: "Dollar", country: "Australia", code: "AUD").save(failOnError: true)
            new Currency(name: "Lev", country: "Bulgaria", code: "BGN").save(failOnError: true)
            new Currency(name: "Real", country: "Brazil", code: "BRL").save(failOnError: true)
            new Currency(name: "Dollar", country: "Canada", code: "CAD").save(failOnError: true)
            new Currency(name: "Franc", country: "Switzerland", code: "CHF").save(failOnError: true)
            new Currency(name: "Renminbi", country: "China", code: "CNY").save(failOnError: true)
            new Currency(name: "Koruna", country: "Czech Republic", code: "CZK").save(failOnError: true)
            new Currency(name: "Krone", country: "Danmark", code: "DKK").save(failOnError: true)
            new Currency(name: "Euro", country: "Europe", code: "EUR").save(failOnError: true)
            new Currency(name: "Pound", country: "United Kingdom", code: "GBP").save(failOnError: true)
            new Currency(name: "Dollar", country: "Hong Kong", code: "HKD").save(failOnError: true)
            new Currency(name: "Kuna", country: "Croatia", code: "HRK").save(failOnError: true)
            new Currency(name: "Forint", country: "Hungary", code: "HUF").save(failOnError: true)
            new Currency(name: "Rupiah", country: "Indonesia", code: "IDR").save(failOnError: true)
            new Currency(name: "Sheqel", country: "Israel", code: "ILS").save(failOnError: true)
            new Currency(name: "Rupee", country: "India", code: "INR").save(failOnError: true)
            new Currency(name: "Yen", country: "Japan", code: "JPY").save(failOnError: true)
            new Currency(name: "Won", country: "Republic of Korea", code: "KRW").save(failOnError: true)
            new Currency(name: "Peso", country: "Mexico", code: "MXN").save(failOnError: true)
            new Currency(name: "Ringgit", country: "Malaysia", code: "MYR").save(failOnError: true)
            new Currency(name: "Krone", country: "Norway", code: "NOK").save(failOnError: true)
            new Currency(name: "Dollar", country: "New Zealand", code: "NZD").save(failOnError: true)
            new Currency(name: "Peso", country: "Philippines", code: "PHP").save(failOnError: true)
            new Currency(name: "Zloty", country: "Poland", code: "PLN").save(failOnError: true)
            new Currency(name: "Leu", country: "Romania", code: "RON").save(failOnError: true)
            new Currency(name: "Ruble", country: "Russia", code: "RUB").save(failOnError: true)
            new Currency(name: "Krona", country: "Sweden", code: "SEK").save(failOnError: true)
            new Currency(name: "Dollar", country: "Singapore", code: "SGD").save(failOnError: true)
            new Currency(name: "Baht", country: "Thailand", code: "THB").save(failOnError: true)
            new Currency(name: "Lira", country: "Turkey", code: "TRY").save(failOnError: true)
            new Currency(name: "Dollar", country: "USA", code: "USD").save(failOnError: true)
            new Currency(name: "Rand", country: "South Africa", code: "ZAR").save(failOnError: true)
        }
    }

    def destroy = {
    }
}

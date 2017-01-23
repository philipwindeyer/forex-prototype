package au.com.pwc.forex

class Configuration {

    String baseUrl
    BigDecimal markup

    static transients = ['markupAsPercent']

    static current() {
        Configuration configuration = Configuration.first()

        if (!configuration) {
            configuration = new Configuration(baseUrl: "http://api.fixer.io", markup: 0.02).save()
        }

        return configuration
    }

    String getMarkupAsPercent() {
        return "${markup * 100}%"
    }
}

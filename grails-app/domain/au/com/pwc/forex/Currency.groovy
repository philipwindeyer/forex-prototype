package au.com.pwc.forex

class Currency {

    String name
    String country
    String code
    transient BigDecimal value

    static transients = ['value']
}

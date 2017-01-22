package au.com.pwc.forex

class Transaction {

    Date started
    Date completed
    Status status = Status.PROGRESS
    String from
    String to
    String amount
    String exchangeRate

    static constraints = {
        completed nullable: true
    }

    enum Status {
        CANCELLED,
        PROGRESS,
        COMPLETE,
        FAILED
    }
}

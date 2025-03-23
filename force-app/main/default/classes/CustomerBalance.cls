public with sharing class CustomerBalance {
    public String customerId;
    public Decimal outstandingBalance;
    public CustomerBalance(String customerId, Decimal outstandingBalance) {
        this.customerId = customerId;
        this.outstandingBalance = outstandingBalance;
    }
}
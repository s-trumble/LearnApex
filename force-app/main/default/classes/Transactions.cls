public with sharing class Transactions {
    public String customerId;
    public Decimal transactionAmount;
    public Transactions(String customerId, Decimal transactionAmount) {
        this.customerId = customerId;
        this.transactionAmount = transactionAmount;
    }
}
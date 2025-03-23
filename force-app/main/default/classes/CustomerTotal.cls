public with sharing class CustomerTotal {
    public String customerId;
    public Decimal totalTransactionAmount;
    public CustomerTotal(String customerId, Decimal totalTransactionAmount) {
        this.customerId = customerId;
        this.totalTransactionAmount = totalTransactionAmount;
    }
}
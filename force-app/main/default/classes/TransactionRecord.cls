public with sharing class TransactionRecord {
    public String accountId;
    public Decimal amount;
    public Date transactionDate;
    public TransactionRecord(String accountId, Decimal amount,Date transactionDate) {
        this.accountId = accountId;
        this.amount = amount;
        this.transactionDate = transactionDate;
    }
}
public with sharing class PurchaseRecord {
    public String customerId;
    public Decimal purchaseAmount;
    
    public PurchaseRecord(String customerId, Decimal purchaseAmount) {
        this.customerId = customerId;
        this.purchaseAmount = purchaseAmount;
    }

}
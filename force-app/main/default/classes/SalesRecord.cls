public with sharing class SalesRecord {
    public Date saleDate;
    public Decimal saleAmount;
    public String salespersonName;
    public SalesRecord(Date saleDate, Decimal saleAmount) {
        this.saleDate = saleDate;
        this.saleAmount = saleAmount;
        
    }

    public SalesRecord(String salespersonName, Decimal saleAmount){
        this.saleAmount = saleAmount;
        this.salespersonName = salespersonName;
    }
}
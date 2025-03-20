public with sharing class OpportunityRecord {
    public String salesRepId;
    public Boolean isWon;
    public OpportunityRecord(String salesRepId, Boolean isWon) {
        this.salesRepId = salesRepId;
        this.isWon = isWon;
    }
}
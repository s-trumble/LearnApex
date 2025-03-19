public with sharing class InteractionRecord {
    public String contactId;
    public Decimal interactionScore; 
    
    public InteractionRecord(String contactId, Decimal interactionScore) {
        this.contactId = contactId;
        this.interactionScore = interactionScore;
    }
}
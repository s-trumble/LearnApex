public with sharing class FeedbackRecord {
    public String productId;
    public Integer rating;
    
    public FeedbackRecord(String productId, Integer rating) {
        this.productId = productId;
        this.rating = rating;
    }
}
public with sharing class SatisfactionCalculator {
    public SatisfactionCalculator() {

    }

    public Map<String, Decimal> calculateAverageSatisfaction(List<FeedbackRecord> feedbackRecords){
        Map<String,Decimal> totalSatisfaction = new Map<String,Decimal>();
        Map<String,Decimal> averageSatisfaction = new Map<String,Decimal>();
        Map<String,Integer> scoreCount = new Map<String,Integer>();

        for(FeedbackRecord record : feedbackRecords){
            if(totalSatisfaction.containsKey(record.productId)){
                totalSatisfaction.put(record.productId, totalSatisfaction.get(record.productId) + record.rating);
                scoreCount.put(record.productId, scoreCount.get(record.productId) + 1);
            } else {
                totalSatisfaction.put(record.productId, record.rating);
                scoreCount.put(record.productId, 1);
            }
        }

        for(String productId : totalSatisfaction.keySet()){
            averageSatisfaction.put(productId, totalSatisfaction.get(productId) / scoreCount.get(productId));
        }

        return averageSatisfaction;
    }
}
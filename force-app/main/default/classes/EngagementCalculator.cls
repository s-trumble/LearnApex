public with sharing class EngagementCalculator {
    public EngagementCalculator() {

    }
    public Map<String,Decimal> calculateEngagementScore(List<InteractionRecord> interactionRecords){
        Map<String,Decimal> engagementScores = new Map<String,Decimal>();

        for(InteractionRecord record : interactionRecords){
            if(engagementScores.containsKey(record.contactId)){
                engagementScores.put(record.contactId, engagementScores.get(record.contactId) + record.interactionScore);
            } else {
                engagementScores.put(record.contactId, record.interactionScore);
            }
        }
        return engagementScores;
    }
}
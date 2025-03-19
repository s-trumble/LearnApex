public with sharing class CaseResolutionCalculator {
    public CaseResolutionCalculator() {

    }
    public Map<String,Decimal> calculateAverageResolutionTime(List<CaseRecord> caseRecords){
        Map<String,Decimal> averageResolutionTimes = new Map<String,Decimal>();
        Map<String, Integer> elementCount = new Map<String,Integer>();

        for(CaseRecord record : caseRecords){
            if(averageResolutionTimes.containsKey(record.agentId)){
                elementCount.put(record.agentId, elementCount.get(record.agentId) + 1);
                averageResolutionTimes.put(record.agentId, averageResolutionTimes.get(record.agentId) + record.resolutionTime);
            } else {
                elementCount.put(record.agentId, 1);
                averageResolutionTimes.put(record.agentId, record.resolutionTime);
            }
        }
        for(String agentId : averageResolutionTimes.keySet()){
            averageResolutionTimes.put(agentId, averageResolutionTimes.get(agentId) / elementCount.get(agentId));
        }


        return averageResolutionTimes;
    }
    
}
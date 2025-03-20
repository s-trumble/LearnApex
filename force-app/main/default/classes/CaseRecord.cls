public with sharing class CaseRecord {
    public String agentId;
    public Decimal resolutionTime;
    public CaseRecord(String agentId, Decimal resolutionTime) {
        this.agentId = agentId;
        this.resolutionTime = resolutionTime;
    }
}
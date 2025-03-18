public with sharing class EventRecord {
    public String eventName;
    public Integer numParticipants;
    public EventRecord(String eventName, Integer numParticipants) {
        this.eventName = eventName;
        this.numParticipants = numParticipants;
    }
}
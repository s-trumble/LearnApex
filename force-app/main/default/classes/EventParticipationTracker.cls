public with sharing class EventParticipationTracker {
    public EventParticipationTracker() {

    }
    public Map<String,Integer> trackParticipation(List<EventRecord> events){
        Map<String,Integer> participation = new Map<String,Integer>();

        for(EventRecord event : events){
            if(participation.containsKey(event.eventName)){
                participation.put(event.eventName, participation.get(event.eventName) + event.numParticipants);
            } else {
                participation.put(event.eventName, event.numParticipants);
            }
        }
        return participation;
    }
}
public with sharing class GymMembershipAnalytics {
    public Map<String, Integer> memberAnalytics;
    
    public GymMembershipAnalytics() {
        memberAnalytics = new Map<String,Integer>();
    }

    public void addMemberTrainingHours(String name, Integer minutes){
        if(memberAnalytics.containsKey(name)){
            memberAnalytics.put(name, memberAnalytics.get(name) + minutes);
        } else {
            memberAnalytics.put(name, minutes);
        }
    }

    public Decimal averageTrainingDuration() {
        if (memberAnalytics.isEmpty()) {
            return 0.00;
        }

        Integer totalMembers = memberAnalytics.size();
        Integer totalTrainingTimeInMinutes = 0;

        for (Integer memberTime : memberAnalytics.values()) {
            totalTrainingTimeInMinutes += memberTime;
        }

        Decimal averageTrainingInHours = (Decimal) totalTrainingTimeInMinutes / 60 / totalMembers;
        averageTrainingInHours = averageTrainingInHours.setScale(2, RoundingMode.HALF_UP);

        System.debug('average training: ' + averageTrainingInHours);

        return averageTrainingInHours;
    }
}
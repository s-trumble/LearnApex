public with sharing class StepTracker {
    private Map<String,Integer> stepCounts;

    public StepTracker() {
        stepCounts = new Map<String,Integer>();
    }

    public void addStepCount(String clientName, Integer stepCount){
        if(stepCounts.containsKey(clientName)){
            stepCounts.put(clientName, stepCounts.get(clientName) + stepCount);
        } else{
            stepCounts.put(clientName, stepCount);
        }
    }

    public Map<String,Boolean> reachedGoal(){
        Map<String,Boolean> goalReached = new Map<String,Boolean>();

        for(String clientName : stepCounts.keySet()){
            Boolean reached = stepCounts.get(clientName) >= 10000;
                goalReached.put(clientName, reached);
            }
        return goalReached;
    }
}
public with sharing class StepCalculator {
    public StepCalculator() {

    }

    public Integer calculateTotalSteps(List<Integer> dailySteps){
        Integer totalSteps = 0;

        for(Integer step : dailySteps){
            totalSteps += step;
        }
        return totalSteps;
    }
}
public with sharing class ProgressDayCounter {
    public Integer countProgressDays(List<Integer> milesRun) {
        Integer progressDays = 0;
        
        for(Integer i = 1 ; i < milesRun.size() ; i++){
            if(milesRun[i] > milesRun[i-1]){
                progressDays++;
            }
        }
        return progressDays;
    }
}
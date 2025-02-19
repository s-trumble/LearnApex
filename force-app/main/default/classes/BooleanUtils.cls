public with sharing class BooleanUtils {
    public BooleanUtils() {

    }

    public Boolean areTrueValuesMoreThan100(List<Boolean> surveyResults){
        if(surveyResults == null || surveyResults.isEmpty()){
            return false;
        }

        Integer trueCount = 0;
        for(Boolean result : surveyResults){
            if(result == true){
                trueCount++;
            }
        }
        return trueCount > 100;
    }
}
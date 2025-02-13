public with sharing class CampaignFeedbackAnalyzer {
    public CampaignFeedbackAnalyzer() {

    }

    public Boolean hasImportantFeedback(List<String> feedback){
        if(feedback == null || feedback.isEmpty()){
            return false;
        }

        
        for(String response : feedback){
            Integer feedbackSize = response.normalizeSpace().split(' ').size();
            if(feedbackSize > 5){
                return true;
            }
        }
        return false;
    }
}
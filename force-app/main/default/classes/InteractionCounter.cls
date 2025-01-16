public with sharing class InteractionCounter {
    public Integer countNeutralInteractions(String str1, String str2) {
        Integer neutralInteractions = 0;
        
        for(Integer i = 0; i < str1.length() ; i++){
            if(str1.charAt(i) != str2.charAt(i)){
                neutralInteractions++;
            }
        }
        
        return neutralInteractions;
    }
}
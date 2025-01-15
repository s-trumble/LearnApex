public with sharing class CapitalLetterCounter {
    public Integer countCapitalLetters(String input) {
     
        Integer capitalCount = 0;

        for(Integer i = 0 ; i < input.length() ; i++){
            if(input.substring(i, i + 1).isAllUpperCase()){
                capitalCount++ ;
            }
        }
        return capitalCount;
    }
}
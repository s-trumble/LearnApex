public with sharing class Utils {
    
    public Boolean doesItIncludeGivenInteger(List<String> stringList, Integer num){
        
        if(stringList == null || stringList.isEmpty()){
            return false;
        }

        String numAsString = String.valueOf(num);
        
        for(String str : stringList){
            if(str.contains(numAsString)){
                return true;
            }
        }
        return false;
    }
}
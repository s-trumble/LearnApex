public with sharing class SetUtils {
    public Boolean isSetSizeGreaterThanTwenty(Set<String> strings) {
        if(strings == null || strings.isEmpty()){
            return false;
        }
        if(strings.size() > 20){
            return true;
        } else {
            return false;
        }
    }
}
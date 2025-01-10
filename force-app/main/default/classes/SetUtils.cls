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

    public Set<String> getUniqueAccountNames(List<String> accountNames){
        if(accountNames == null || accountNames.isEmpty()){
            return new Set<String>();
        }
        Set<String> uniqueAccounts = new Set<String>();
        for(String name : accountNames){
            if(name != null){   
                uniqueAccounts.add(name.toLowerCase());
            }   
        }
        return uniqueAccounts;
    }
}
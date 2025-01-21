public with sharing class PandigitalChecker {
    public Boolean isPandigital(Integer num) {
        //pandigitla is all numbers 0-9
        if(num == null){
            return false;
        }
        num = Math.abs(num);
        String numAsString = String.valueOf(num);

        Set<String> digitSet = new Set<String>();

        for(Integer i = 0 ; i < numAsString.length() ; i++){
            digitSet.add(numAsString.substring(i, i + 1));
        }

        return digitSet.size() == 10;
    }
}
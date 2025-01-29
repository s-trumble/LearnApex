public with sharing class NumberPatternGenerator {
    public List<String> generateNumberPattern (Integer N) { 
        /*
            '1'
            '22'
            '333'
            '4444'
        */
        List<String> pattern = new List<String>();
        //loop through N times
        for(Integer i = 1 ; i <= N ; i++){
            String numAsString = '';
            //repeat digit i times
            for(Integer j = 1 ; j <= i ; j++){
                numAsString += String.valueOf(i);
            }
            pattern.add(numAsString);
        }
        return pattern;
    }
}
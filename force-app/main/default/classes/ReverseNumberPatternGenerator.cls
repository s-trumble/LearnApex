public with sharing class ReverseNumberPatternGenerator {
    public List<String> generateReverseNumberPattern  (Integer N) { 
        /*
            '4444',
            '333',
            '22',
            '1'
        */
        List<String> pattern = new List<String>();
        //loop through N times
        for(Integer i = N ; i > 0 ; i--){
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
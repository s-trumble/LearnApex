public with sharing class CalculateAscii {
    public Boolean isAsciiSumGreaterThanThousand(String input) {
        Integer sum = 0;

        for(Integer i = 0 ; i < input.length() ; i++){
            sum += input.charAt(i);
        }
       
        return sum > 1000;
    }
}
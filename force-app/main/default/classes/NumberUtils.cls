public with sharing class NumberUtils {
    /*Write a method named 'isRepDigit' that takes an integer as a parameter and returns a Boolean value. 
    The method should return true if the integer is a repdigit, otherwise false. 
    A repdigit is a positive number composed entirely of the same digit.*/
    public Boolean isRepDigit(Integer num) {
        
        if(num == null || num <= 0 ){
            return false;
        }
        Set<String> nums = new Set<String>(String.valueOf(num).split(''));
        
        if(nums.size() == 1){
            return true;
        } else {
            return false;
        }  
    }

    public Boolean isItsDigitsSumOdd(Integer num){
        if(num == null || num == 0){
            return false;
        }
        num = Math.abs(num);
        String numAsString = String.valueOf(num);
        Integer sumOfDigits = 0;
        for(Integer i = 0 ; i < numAsString.length() ; i++){
            sumOfDigits += Integer.valueOf(numAsString.substring(i, i + 1));
        }
        if(Math.mod(sumOfDigits, 2) == 0){
            return false;
        } else {
            return true;
        }
    }
}
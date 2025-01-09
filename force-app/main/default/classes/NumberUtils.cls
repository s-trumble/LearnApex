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
}
/*
Create a method named 'isDivisibleBy3or5' in the 'DivisionChecker' class. 
This method takes an integer parameter 'numberToCheck' and returns a String. 

The method should return 'Divisible by 3' if the number is only divisible by 3

'Divisible by 5' if it's only divisible by 5 

'Divisible by both' if it's divisible by both 3 and 5 

'Not divisible by 3 or 5' if it's divisible by neither.
*/
public with sharing class DivisionChecker {
    public String isDivisibleBy3or5(Integer numberToCheck) {
        String result;
        if(Math.mod(numberToCheck, 3) == 0 && Math.mod(numberToCheck, 5)==0){
            result = 'Divisible by both';
        } else if (Math.mod(numberToCheck, 3) == 0){
            result = 'Divisible by 3';
        } else if (Math.mod(numberToCheck, 5) == 0){
            result = 'Divisible by 5';
        } else {
            result = 'Not divisible by 3 or 5';
        }
        return result;
    }
}
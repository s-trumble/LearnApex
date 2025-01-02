/*
Create a method named 'maximumNumber' in the 'IfElsePractice' class. 
This method should take two Integer parameters, 'number1' and 'number2', and return the bigger of the two numbers.
*/
public with sharing class IfElsePractice {
    public Integer maximumNumber(Integer number1, Integer number2, Integer number3) {
        if(number1 > number2 && number1 > number3){
            return number1;
        } else if(number2 > number1 && number2 > number3){
            return number2;
        } else {
            return number3;
        }
    }
}
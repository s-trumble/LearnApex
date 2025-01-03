/*
Create a method named 'numberToString' that takes an integer parameter number. 
The method should use a switch statement to return a string indicating the number provided. Specifically:

If number is 1, return 'Number is 1'.
If number is 0, return 'Number is 0'.
For any other value of number, return 'Number is not recognized'.
*/
public with sharing class NumberChecker {
    public String numberToString(Integer num) {
        switch on num{
            when 1 {
                return 'Number is 1';
            }
            when 0 {
                return 'Number is 0';
            } when else {
                return 'Number is not recognized';
            }
        }

    }
}
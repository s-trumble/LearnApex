/*
Create a method named 'isLeapYear' in the 'YearChecker' class. 
This method takes an integer parameter 'year' and returns a Boolean. 
The method should return true if the year is a leap year, and false otherwise. 
A year is a leap year if it is divisible by 4 but not by 100, unless it is also divisible by 400.

      return (Math.mod(year, 4) == 0) && (Math.mod(year, 100) != 0 || Math.mod(year, 400) == 0);
*/
public with sharing class YearChecker {
    public Boolean isLeapYear(Integer year) {
        if(Math.mod(year, 400) == 0){
            return true;
        } else if(Math.mod(year, 100)==0){
            return false;
        } else if (Math.mod(year, 4) == 0){
            return true;
        } else {
            return false;
        }

    }
}
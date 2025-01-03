/*

Create a method named 'dayOfWeekToString' that takes an integer parameter dayOfWeek. 
The method should use a switch statement to return a string indicating the day of the week based on the provided integer:
1 sunday, 7 sautrday
*/
public with sharing class DayOfWeekConverter {
    public String dayOfWeekToString(Integer dayOfWeek) {
        switch on dayOfWeek {
            when  1{
                return 'Sunday';
            }
            when 2{
                return 'Monday';
            }
            when 3 {
                return 'Tuesday';
            }
            when 4 {
                return 'Wednesday';
            }
            when 5 {
                return 'Thursday';
            }
            when 6 {
                return 'Friday';
            }
            when 7 {
                return 'Saturday';
            }
            when else {
                return 'Invalid day of week';
            }
        }

    }
}
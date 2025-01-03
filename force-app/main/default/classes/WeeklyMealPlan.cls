/*
Create a method named 'getMeal' that takes a day of the week as a string parameter, utilizes a switch statement, 
and returns a specific meal plan for each day:
Monday: Returns 'Indian Food'
Tuesday: Returns 'Pasta Night'
Wednesday: Returns 'Salad Day'
Thursday: Returns 'BBQ Night'
Friday: Returns 'Pizza Night'
Saturday: Returns 'Family Cookout'
Sunday: Returns 'Brunch Special'

If the provided day does not match any of these, the method should return 'Invalid day of the week. Please provide a valid day.'

The method should be case-insensitive.
*/
public with sharing class WeeklyMealPlan {
    public String getMeal(String dayOfWeek) {
        switch on dayOfWeek.capitalize() {
            when 'Monday' {
                return 'Indian Food';
            }
            when 'Tuesday'{
                return 'Pasta Night';
            }
            when 'Wednesday'{
                return 'Salad Day';
            }
            when 'Thursday'{
                return 'BBQ Night';
            }
            when 'Friday'{
                return 'Pizza Night';
            }
            when 'Saturday'{
                return 'Family Cookout';
            }
            when 'Sunday'{
                return 'Brunch Special';
            }
            when else {
                return 'Invalid day of the week. Please provide a valid day.';
            }
        }
    }
}
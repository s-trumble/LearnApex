/*
Create a method named 'getSeason' that takes two string parameters: hemisphere and month. 
The method should determine the season based on the hemisphere and month provided and return the
 corresponding season as a string by using switch statement.

If hemisphere is 'south':
If month is 'December', 'January', or 'February', return 'Summer'.
If month is 'March', 'April', or 'May', return 'Autumn'.
If month is 'June', 'July', or 'August', return 'Winter'.
If month is 'September', 'October', or 'November', return 'Spring'.
If month is not recognized, return 'Invalid month specified.'

If hemisphere is 'north':
If month is 'December', 'January', or 'February', return 'Winter'.
If month is 'March', 'April', or 'May', return 'Spring'.
If month is 'June', 'July', or 'August', return 'Summer'.
If month is 'September', 'October', or 'November', return 'Autumn'.
If month is not recognized, return 'Invalid month specified.'
Ensure to handle case insensitivity for both hemisphere and month parameters. If hemisphere is neither 'south' nor 'north', return 'Invalid hemisphere specified.
*/
public with sharing class SeasonChecker {
    public String getSeason(String hemisphere, String month) {
        switch on hemisphere.capitalize() {
            when  'South'{
                switch on month.capitalize() {
                    when  'December', 'January', 'February'{
                        return 'Summer';
                    }
                    when 'March', 'April','May'{
                        return 'Autumn';
                    }
                    when 'June', 'July', 'August'{
                        return 'Winter';
                    }
                    when 'September', 'October', 'November' {
                        return 'Spring';
                    }
                    when else {
                        return 'Invalid month specified.';
                    }
                }
                
            }
            when 'North'{
                switch on month.capitalize() {
                    when  'December', 'January', 'February'{
                        return 'Winter';
                    }
                    when 'March', 'April','May'{
                        return 'Spring';
                    }
                    when 'June', 'July', 'August'{
                        return 'Summer';
                    }
                    when 'September', 'October', 'November' {
                        return 'Autumn';
                    }
                    when else {
                        return 'Invalid month specified.';
                    }
                }
            }
            when else {
                return 'Invalid hemisphere specified.';
            }
        }
    }
}

/* using ternary ops

public String getSeason(String hemisphere, String month) {
        hemisphere = hemisphere.toLowerCase();
        month = month.toLowerCase();
        
        if (hemisphere != 'south' && hemisphere != 'north') {
            return 'Invalid hemisphere specified.';
        }
        
        String season;
        
        switch on month {
            when 'december', 'january', 'february' {
                season = (hemisphere == 'south') ? 'Summer' : 'Winter';
            }
            when 'march', 'april', 'may' {
                season = (hemisphere == 'south') ? 'Autumn' : 'Spring';
            }
            when 'june', 'july', 'august' {
                season = (hemisphere == 'south') ? 'Winter' : 'Summer';
            }
            when 'september', 'october', 'november' {
                season = (hemisphere == 'south') ? 'Spring' : 'Autumn';
            }
            when else {
                season = 'Invalid month specified.';
            }
        }
        
        return season;
    }
        */
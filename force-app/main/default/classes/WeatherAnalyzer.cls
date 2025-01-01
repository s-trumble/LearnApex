/*
You're a developer at EcoTech Analytics, a company specializing in environmental data analysis. You have been tasked with creating a method to process and analyze weather data. This method will help determine if a day is considered hot, mild, or cold based on temperature readings.

1. Create a class called `WeatherAnalyzer`
2. Write a method named `analyzeTemperature` that categorizes the day's weather based on the temperature.
3. The method should accept a single Decimal parameter representing the temperature.
4. If the temperature is above 30 degrees Celsius, return "Hot".
5. If the temperature is between 15 and 30 degrees Celsius, return "Mild".
6. If the temperature is below 15 degrees Celsius, return "Cold".
*/
public with sharing class WeatherAnalyzer {
    public String analyzeTemperature(Decimal temperature) {
        if(temperature > 30){
            return 'Hot';
        } else if(temperature > 15){
            return 'Mild';
        } else {
            return 'Cold';
        }
    }
}
public with sharing class TemperatureConverter {
    public List<Decimal> convertToFahrenheit(List<Decimal> celsiusTemperatures) {
        List<Decimal> fahrenheitTemperatures = new List<Decimal>();

        if(celsiusTemperatures == null || celsiusTemperatures.isEmpty()){
            return fahrenheitTemperatures;
        }

        for (Decimal celsius : celsiusTemperatures) {
            Decimal fahrenheit = (celsius * 9 / 5 + 32).setScale(2);
            fahrenheitTemperatures.add(fahrenheit);
        }

        return fahrenheitTemperatures;
    }
}
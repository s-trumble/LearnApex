public with sharing class CityHotelPrices {
    public List<String> cityNames;
    public List<Decimal> prices;

    public CityHotelPrices() {
        cityNames = new List<String>();
        prices = new List<Decimal>();
    }

    public void addCityPrice(String cityName, Decimal price){
        cityNames.add(cityName);
        prices.add(price);

    }

    public Decimal averagePrice(){
        if(prices.isEmpty()){
            return 0;
        }
        Decimal totalPrice = 0;
        for(Decimal price : prices){
            totalPrice += price;
        }
        return totalPrice/prices.size();
    }

    public List<String> affordableCities(Decimal budget){
        List<String> affordableCities = new List<String>();

        Decimal averagePrice = averagePrice();
        
        for(Integer i = 0 ; i < prices.size(); i++){
            //confirm city is both less than budget and less than average
            if(prices[i] <= budget && prices[i] <= averagePrice){
                affordableCities.add(cityNames[i]);
            }
        }
        return affordableCities;
    }
}
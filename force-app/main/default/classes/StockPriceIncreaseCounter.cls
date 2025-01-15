public with sharing class StockPriceIncreaseCounter {
    public Integer countStockPriceIncreases(List<Integer> prices) {
        Integer increases = 0;
        
        for(Integer i = 1 ; i < prices.size() ; i++){
            if(prices[i] > prices[i-1]){
                increases++;
            }
        }
        return increases;
    }
}
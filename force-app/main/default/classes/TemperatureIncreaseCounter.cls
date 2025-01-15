public with sharing class TemperatureIncreaseCounter {
    public Integer countTemperatureIncreases(List<Integer> temps) {
        Integer increaseTemp = 0;
        
        for(Integer i = 1 ; i < temps.size() ; i++){
            if(temps[i] > temps[i-1]){
                increaseTemp++;
            }
        }
        return increaseTemp;
    }
}
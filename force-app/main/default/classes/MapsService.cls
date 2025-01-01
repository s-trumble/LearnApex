public class MapsService {
    public Map<String,Integer> mergeMaps(Map<String, Integer> map1, Map<String, Integer> map2){
        for(String key : map2.keySet()){
            Integer valueToPut = map2.get(key);
            
            if(map1.containsKey(key)){
                valueToPut = valueToPut + map1.get(key);
            } 
            
            map1.put(key, valueToPut);
        }
            
        return map1;
    }
    
    public List<String> intersectKeys(Map<String, Integer> map1, Map<String, Integer> map2){
        List<String> commonKeys = new List<String>();
        
        for(String key : map1.keySet()){
            if(map2.get(key) != null){
                commonKeys.add(key);
            }
        }
        system.debug(commonKeys);
        return commonKeys;
    }
    
    public Map<String, Integer> filterByValue(Map<String, Integer> inputMap, Integer threshold){
        Map<String, Integer> greaterThresholdMap = new Map<String, Integer>();
        
        for(String key : inputMap.keySet()){
            if(inputMap.get(key) >= threshold){
                greaterThresholdMap.put(key, inputMap.get(key));
            }
        }
        
        return greaterThresholdMap;
    }
    
    public List<String> getValuesByKey(Map<String, String> inputMap, List<String> keys){
        List<String> valuesList = new List<String>();
        
        for(String key : keys){
            valuesList.add(inputMap.get(key));
        }
        
        return valuesList;
    }

}
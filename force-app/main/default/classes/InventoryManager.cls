public with sharing class InventoryManager {
    
    public Map<String,List<String>> findItemsToReplenish(List<Map<String,Object>> categories ){
        Integer THRESHOLD = 10;
        
        Map<String,List<String>> itemsToReplenish = new Map<String,List<String>>();
        if(categories == null || categories.isEmpty()){
            return itemsToReplenish;
        }
        for(Map<String,Object> category : categories){
            String categoryName = (String)category.get('categoryName');
            List<Map<String,Object>> items = (List<Map<String,Object>>)category.get('items');

            List<String> itemList = new List<String>();
            for(Map<String,Object> item : items){
                String itemName = (String)item.get('itemName');
                Integer stockLevel = (Integer)item.get('stockLevel');

                if(stockLevel < THRESHOLD){
                    itemList.add(itemName);
                }
            }
            itemsToReplenish.put(categoryName, itemList);
        }
        return itemsToReplenish;
    }
}
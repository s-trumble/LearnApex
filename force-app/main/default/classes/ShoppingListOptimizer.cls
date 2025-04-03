public with sharing class ShoppingListOptimizer {
    public ShoppingListOptimizer() {

    }

    public List<String> optimizeShoppingList(Map<String,Integer> products){
        List<String> orderedProducts = new List<String>();

        if(products == null || products.isEmpty()){
            return orderedProducts;
        }

        //create list of item objects from input map
        List<Item> items = new List<Item>();
        for(String productName : products.keySet()){
            items.add(new Item(productName,products.get(productName)));
        }
        items.sort();
        //add sorted items to list in required format
        for(Item item : items){
            orderedProducts.add(item.name + ' (' + item.quantity + ')');
        }

        return orderedProducts;
    }
}
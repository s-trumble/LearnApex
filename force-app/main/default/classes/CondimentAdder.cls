public with sharing class CondimentAdder {
    public CondimentAdder() {

    }

    public List<String> addCondiments(List<String> dishes, String condiment){
        List<String> resultingDishes = new List<String>();

        for(String dish : dishes){
            if(dish == condiment){
                resultingDishes.add('sauce');
                resultingDishes.add(dish);
                resultingDishes.add('syrup');
            } else {
                resultingDishes.add(dish);
            }
        }
        return resultingDishes;
    }
}
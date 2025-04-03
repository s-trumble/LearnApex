public with sharing class Item implements Comparable{
    public String name;
    public Integer quantity;
    public Item(String name, Integer quantity) {
        this.name = name;
        this.quantity = quantity;
    }

    public Integer compareTo(Object compareTo){
        Item otherItem = (Item)compareTo;
        return otherItem.quantity - this.quantity; //descending order
    }
}
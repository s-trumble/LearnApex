public with sharing class JuiceProduct {
    public String getDrinkId(String flavorName, String capacity){
        List<String> flavourList = flavorName.split(' ');
        System.debug('flavourlist: ' + flavourList);
        String productId = '';
        for(String flavour : flavourList){
            productId += flavour.left(3).toUpperCase();
            system.debug('flavour: ' + flavour);
            System.debug('productid in loop: ' + productId);
        }
        productId += capacity.toUpperCase();

        return productId;
    }
}

/*1) Define a method named getDrinkID that takes two parameters:
- String flavorName: The name of the juice flavor.
- String capacity: The capacity of the juice bottle.
2) The method should generate the product ID by concatenating the first three letters of each word in the flavor name (converted to uppercase) followed by the capacity.

Example: 

Input:
flavorName = "Pineapple Coconut"
capacity = "750ML"

Output:
PINCOC750ML*/
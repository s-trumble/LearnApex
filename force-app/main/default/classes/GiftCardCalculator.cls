/*
Trailhead Market offers gift cards to customers based on the purchase amount and customer type. 
Write a method that takes a customer's purchase amount and customer type. 

If the customer type equals "Prime" and the purchase amount is over $500, set the gift card amount to $100; otherwise, $50. 

If the customer type is not "Prime" and the purchase amount is over $300, set the gift card amount to $50; otherwise, $20.

Method name should be "calculateGiftCard".

The method should take a Decimal type "purchaseAmount" and a String type "customerType" parameter.

Use the == operator to check if the customer type equals "Prime".

Use an if-else structure to determine the gift card amount.

The method should return the gift card amount
*/
public with sharing class GiftCardCalculator {
    public Decimal calculateGiftCard(Decimal purchaseAmount, String customerType) {
        Decimal giftCardAmount = 0;
        if(customerType == 'Prime' && purchaseAmount > 500){
            giftCardAmount = 100;
        } else if(customerType == 'Prime'){
            giftCardAmount = 50;
        } else if (purchaseAmount > 300){
            giftCardAmount = 50;
        } else {
            giftCardAmount = 20;
        }

        

        return giftCardAmount;

    }
}
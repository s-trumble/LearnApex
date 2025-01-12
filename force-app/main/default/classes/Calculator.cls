public with sharing class Calculator {
    public Decimal multiplicationDividedByAddition(Integer n) {
        // The method should calculate the division of the product of all numbers 
        //from 1 to 'n' by the sum of all numbers from 1 to 'n'.
        Decimal product = 1;
        Decimal sum = 0;
        
        for(Integer i = 1 ; i <= n ; i++){
            product *= i;
            sum += i;
        }
        System.debug(product);
        System.debug(sum);

        Decimal result = product/sum;
        System.debug(result);
        return result;
    }
}
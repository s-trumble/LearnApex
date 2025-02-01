public with sharing class IntegerUtility {
    public Integer sumOfDigitSquares(Integer n) {
        Integer sum = 0;
        if(n == null){
            return sum;
        }
        //absolute value so negs are pos
        n = Math.abs(n);

        while(n > 0){
            //extract last digit (order not important for sum)
            Integer digit = Math.mod(n,10);
            //square it
            sum += digit * digit;

            //remove last digit from n
            n /= 10;

        }

        return sum;
    }
}
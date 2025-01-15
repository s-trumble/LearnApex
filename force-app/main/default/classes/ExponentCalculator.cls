public with sharing class ExponentCalculator {
    public Decimal calculateExponent(Integer base, Integer exponent) {
        Decimal result = 1;

        for(Integer i = 0; i < exponent; i++){
            result *= base;
        }
        return result;
    }
}
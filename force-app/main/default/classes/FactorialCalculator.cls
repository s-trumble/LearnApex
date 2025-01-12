public with sharing class FactorialCalculator {
    public Integer calculateFactorialNumber(Integer n) {
        Integer factorial = 1;
        for(Integer i = 1 ; i <= n ; i++){
            factorial *=  i;
        }
        return factorial;
    }
}
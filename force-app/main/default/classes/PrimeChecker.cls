public with sharing class PrimeChecker {
    public Boolean isPrime(Integer myNumber) {
        if(myNumber <= 1){
            return false;
        }
        for(Integer i = 2 ; i < Math.sqrt(myNumber) ; i++){
            if(Math.mod(myNumber, i) == 0){
                return false;
            }
        }
        return true;
    }
}
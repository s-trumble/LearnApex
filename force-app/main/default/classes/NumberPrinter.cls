public with sharing class NumberPrinter {
    public Boolean printNumbers(Integer num) {
        if(num == null || num <= 0){
            System.debug('Input number must be a positive integer.');
            return false;
        }

        for(Integer i = 1 ; i <= num ; i++){
            System.debug('This is for number ' + i);
        }
        return true;
    }

    public Boolean printNumbersSkip2(Integer num) {
        if(num == null || num <= 0){
            System.debug('Input number must be a positive integer.');
            return false;
        }

        for(Integer i = 1 ; i <= num ; i++){
            
            if(i!=2){
                 System.debug('This is for number ' + i);
            }
        }
        return true;
    }
}
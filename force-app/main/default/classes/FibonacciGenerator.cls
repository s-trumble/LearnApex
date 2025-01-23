public with sharing class FibonacciGenerator {
    public List<Integer> generateFibonacciSeries(Integer num) {
        if(num == null || num <= 0){
            return new List<Integer>{0};
        }

        List<Integer> fibonacciSequence = new List<Integer>{0,1};
        Integer lastNumber = 0;
        Integer nextNumber = 0; 
        for(Integer i = 2 ; nextNumber <= num ; i++ ){
            lastNumber = fibonacciSequence[i-2] + fibonacciSequence[i-1];
            nextNumber = lastNumber + fibonacciSequence[i-1];
            fibonacciSequence.add(lastNumber);
            System.debug(fibonacciSequence);
        }
        return fibonacciSequence;
    }
}
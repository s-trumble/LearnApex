public with sharing class CollatzConjecture {
    public List<Integer> collatzSequence(Integer num) {  
        List<Integer> collatz = new List<Integer>();
        //add starting number
        collatz.add(num);
        while(num > 1){
            if(Math.mod(num,2) == 0){
                num /= 2;
            } else {
                num = num * 3 + 1;
            }
            collatz.add(num);
        }
        System.debug(collatz);
        return collatz;

    }
}
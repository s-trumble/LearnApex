public with sharing class NumberUtils {
    /*Write a method named 'isRepDigit' that takes an integer as a parameter and returns a Boolean value. 
    The method should return true if the integer is a repdigit, otherwise false. 
    A repdigit is a positive number composed entirely of the same digit.*/
    public Boolean isRepDigit(Integer num) {
        
        if(num == null || num <= 0 ){
            return false;
        }
        Set<String> nums = new Set<String>(String.valueOf(num).split(''));
        
        if(nums.size() == 1){
            return true;
        } else {
            return false;
        }  
    }

    public Boolean isItsDigitsSumOdd(Integer num){
        if(num == null || num == 0){
            return false;
        }
        num = Math.abs(num);
        String numAsString = String.valueOf(num);
        Integer sumOfDigits = 0;
        for(Integer i = 0 ; i < numAsString.length() ; i++){
            sumOfDigits += Integer.valueOf(numAsString.substring(i, i + 1));
        }
        if(Math.mod(sumOfDigits, 2) == 0){
            return false;
        } else {
            return true;
        }
    }

    public Boolean isPerfectNumber(Integer num){
        /*A number is considered perfect if the sum of its proper divisors (excluding itself) equals the number itself. 
        For example, 28 is a perfect number because the sum of its proper divisors (1, 2, 4, 7, 14) equals 28.
        */
        if(num == null || num <= 0){
            return false;
        }

        Integer divisorSum = 0;

        for(Integer i = 1 ; i <= num/2 ; i++ ){
            if(Math.mod(num, i) == 0){
                divisorSum += i;
            }
        }
       return divisorSum == num;
    }

    public List<Integer> getPerfectNumbers(List<Integer> nums){
        List<Integer> perfectNumbers = new List<Integer>();
        if(nums == null || nums.isEmpty()){
            return perfectNumbers;
        }
        
        for(Integer num : nums){
            if(num >= 1){
                Integer divisorSum = 0;
                for(Integer i = 1 ; i <= num/2 ; i++ ){
                    
                    if(Math.mod(num, i) == 0){
                        divisorSum += i;
                    }
                }
                if(divisorSum == num){
                    perfectNumbers.add(num);
                }
            }
        }      
        return perfectNumbers;
    }

    public List<Integer> getMultiples(Integer num, Integer length){
        List<Integer> multiples = new List<Integer>();
        if(length == null || num == null ||  length < 0){
            return multiples;
        }
        for(Integer i = 1 ; i <= length ; i++){
            multiples.add(num * i);
        }
        return multiples;
    }

    public List<Integer> getMultiplesWithEvens(Integer num, Integer length){
        List<Integer> multiples = new List<Integer>();
        if(length == null || num == null ||  length < 0){
            return multiples;
        }
        for(Integer i = 1 ; i <= length ; i++){
            if(Math.mod(i, 2) == 0){
                multiples.add(num * i) ;
            }
        }
        return multiples;
    }
}
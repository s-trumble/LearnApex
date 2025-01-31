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

    public Integer squareDigits(Integer num){
        Integer result = 0;
        if(num == 0){
            return result;
        }
        num = Math.abs(num);
        String numAsString = String.valueOf(num);
        String squaredDigits = '';
        for(Integer i = 0 ; i < numAsString.length() ; i++){
            Integer digit = Integer.valueOf(numAsString.substring(i, i + 1));
            squaredDigits += String.valueOf(digit * digit);
        }
        result = Integer.valueOf(squaredDigits);
        return result;
    }

    public List<Integer> generateSequence(Integer num){
        List<Integer> sequence = new List<Integer>();
        if(num == null || num <= 0){
            return sequence;
            }
        

        for(Integer i = 1 ; i <= num ; i++){
            if(Math.mod(i, 4) == 0){
                sequence.add(i * 10);
            } else{
                sequence.add(i);
            }
        }
        return sequence;
    }

    /*Write a method named 'findDivisibleNumbers' that takes three integers as parameters:

x, which represents the start of the range (inclusive).
y, which represents the end of the range (inclusive).
n, which represents the divisor to be checked against.
*/
    public List<Integer> findDivisibleNumbers(Integer x, Integer y, Integer z){
        List<Integer> result = new List<Integer>();
        if(x == null || y == null || z == null){
            return result;
        }

        if(x > y){
            return result;
        }

        for(Integer i = x; i <= y ; i++){
            if(Math.mod(i, z) == 0){
                result.add(i);
            }
        }
        return result;
    }

    public Integer sumUpToNumber(Integer n){
        if(n == null || n < 1){
            return 0;
        }

        Integer sum = 0;
        Integer i = 1;
        while(i <= n){
            sum += i;
            i++;
        }
        return sum;
    }

    public Integer sumOddNumbers(Integer n){
        if(n == null || n < 1){
            return 0;
        }

        Integer sum = 0;
        Integer i = 1;
        while(i <= n){
            sum += i;
            i += 2;
        }
        return sum;
    }
}

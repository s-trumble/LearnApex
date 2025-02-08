public with sharing class MissingNumberFinder {
    public Integer findMissingNumber(List<Integer> numberList){
        if(numberList == null || numberList.isEmpty() || numberList.size() <= 2){
            return 0;
        }

        numberList.sort();
        Integer currentNumber = numberList[0];
        Integer prevNumber;
        for(Integer i = 1; i < numberList.size(); i++){
            if(numberList[i] - numberList[i-1] != 1){
                return numberList[i] - 1;
            }
        }
        return 0;
    }
    //learn apex solution
    public Integer altFindMissingNumber(List<Integer> numbers) {
        Integer n = numbers.size() + 1;
        Integer expectedSum = (numbers.get(0) + numbers.get(numbers.size() - 1)) * n / 2;
        Integer actualSum = 0;
        
        for (Integer num : numbers) {
            actualSum += num;
        }
        
        return expectedSum - actualSum;
    }
}
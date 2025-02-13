public with sharing class NumberProcessor {
    public NumberProcessor() {

    }

    public Decimal calculateAverageExcludingExtremes(List<Decimal> nums){
        if(nums == null || nums.size() < 3){
            return null;
        }

        nums.sort();
        
        //remove max decimal
        nums.remove(nums.size() - 1);
        //remove min decimal
        nums.remove(0);

        Decimal total = 0;
        for(Decimal num : nums){
            total += num;
        }
        Decimal average = total / nums.size(); 
        return average;
    }
}
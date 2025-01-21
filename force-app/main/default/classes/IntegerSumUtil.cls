public with sharing class IntegerSumUtil {
    public Integer sumSkippingTwoIntegers(List<Integer> nums) {
        //For example, given the input list {1, 2, 3, 4, 5, 6, 7, 8, 9}, the method should return 15 because 1 + 4 + 7 = 12.
        if(nums == null || nums.isEmpty()){
            return 0;
        }
        Integer total = 0;
        for(Integer i = 0 ; i < nums.size() ; i += 3){
            total += nums[i];
        }
        return total;
    }
}
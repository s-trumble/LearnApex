public with sharing class SumUtil {
    public Integer sumEveryOther(List<Integer> nums) {
        Integer sumEverySecond = 0;
        
        for(Integer i = 0 ; i < nums.size() ; i += 2){
            sumEverySecond += nums[i];
        }
        return sumEverySecond;
    }
}
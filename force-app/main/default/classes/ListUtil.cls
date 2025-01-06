public with sharing class ListUtil {
    public List<Integer> getFirstThreeElements(List<Integer> nums) {
        List<Integer> firstThree = new List<Integer>{0,0,0};
        if(!nums.isEmpty()){
            firstThree[0] = nums.size() > 0 ? nums[0] : 0;
            if(nums.size() > 1){
                firstThree[1] = nums[1];
            }
            if(nums.size() > 2){
                firstThree[2] = nums[2];
            }
        }
        return firstThree;
    }

    public List<Integer> getLastThreeElements(List<Integer> nums) {
        List<Integer> lastThree = new List<Integer>{-1,-1,-1};
        Integer length = nums.size();
        if(!nums.isEmpty()){
            lastThree[2] = nums[length - 1];
            if(length> 1){
                lastThree[1] = nums[length - 2];
            }
            if(length> 2){
                lastThree[0] = nums[length- 3];
            }
        }
        return lastThree;
    }
}
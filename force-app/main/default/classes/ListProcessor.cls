public with sharing class ListProcessor {
    public List<Integer> removeGreaterThanTen(List<Integer> nums) {
        if(nums == null || nums.isEmpty()){
            return new List<Integer>();
        }
        // remove all numbers > 10
        Integer i = 0;
        while(i < nums.size()){
            if(nums.get(i) > 10){
                nums.remove(i);
            }else{
                i++; //only increment when item not removed. if item removed the lsit indexs will change
            }
        }
        return nums;
    }
}
public with sharing class CalculateUtil {
    public Integer findProduct(List<Integer> nums) {
    
        if(nums == null || nums.isEmpty() || nums.size() < 2){
            return 0;
        }
        //sort list
        nums.sort();
        Integer productTotal = nums[nums.size() -1] * nums[nums.size() - 2];
        return productTotal;
    }
}
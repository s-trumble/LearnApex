public with sharing class FactorChainChecker {
    public Boolean isFactorChain(List<Integer> nums) {
        //A factor chain is defined as a list where each element (starting from the 
        //second element) is divisible by the previous element without a remainder.
        if(nums == null || nums.isEmpty()){
            return false;
        }

        if(nums.size() < 2){
            return false;
        }

        for(Integer i = 1 ; i < nums.size() ; i++){
            if(Math.mod(nums[i], nums[i-1]) != 0){
                return false;
            }
        }
        return true;
    }
}
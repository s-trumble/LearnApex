public with sharing class MirrorTransformer {
    public List<Integer> mirror(List<Integer> nums) {
        List<Integer> mirrorList = new List<Integer>();
        
        if(nums == null || nums.isEmpty()){
            return mirrorList;
        }

        mirrorList.addAll(nums);

        for(Integer i = nums.size() - 2 ; i >= 0 ; i--){
            // Check for null values in the original list and skip them
            if (nums[i] != null) {
                // Add each element to the mirrored list
                mirrorList.add(nums[i]);
            }
        }
        return mirrorList;
    }
}
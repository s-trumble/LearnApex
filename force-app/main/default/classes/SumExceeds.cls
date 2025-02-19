public with sharing class SumExceeds {
    public SumExceeds() {

    }

    public String sumExceeds100(List<Integer> nums){
        
        Integer sum = 0;
        for(Integer num : nums){
            sum += num;
            if(sum > 100){
                return 'done';
            }
        }
        return 'not done';
    }
}
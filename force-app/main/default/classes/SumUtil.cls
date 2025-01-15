public with sharing class SumUtil {
    public Integer sumEveryOther(List<Integer> nums) {
        Integer sumEverySecond = 0;
        
        for(Integer i = 0 ; i < nums.size() ; i += 2){
            sumEverySecond += nums[i];
        }
        return sumEverySecond;
    }

    public String repeatCharacters(String input){
        String result = '';

        if(String.isBlank(input)){
            return result;
        }

        for(Integer i = 0 ; i < input.length() ; i ++){
            String letterToAdd = input.substring(i, i + 1);
            result += letterToAdd;
            result += letterToAdd;
        }
        return result;
    }
}
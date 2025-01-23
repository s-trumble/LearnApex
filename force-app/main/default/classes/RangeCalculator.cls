public with sharing class RangeCalculator {
    public Integer calculateRange(Integer num1, Integer num2) {
        if(num1 == null || num2 == null){
            return 0;
        }
        if(num1 == num2){
            return 0;
        }

        Integer lowRange = Math.min(num1, num2);
        Integer highRaange = Math.max(num1, num2);
        Integer sum = 0;
        for(Integer i = lowRange; i <= highRaange; i++){
            sum += i;
        }
        return sum;
    }
}
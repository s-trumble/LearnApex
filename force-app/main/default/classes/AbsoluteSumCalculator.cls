public with sharing class AbsoluteSumCalculator {
    public Integer getAbsSum(List<Integer> numberList) {
        Integer absSum = 0;
        for(Integer num : numberList){
            absSum += Math.abs(num);
        }
        return absSum;
    }
}
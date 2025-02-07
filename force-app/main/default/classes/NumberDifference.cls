public with sharing class NumberDifference {
    public Integer findDifference(List<Integer> numList){
        if(numList == null || numList.isEmpty()){
            return null;
        }

        if(numList.size() == 1){
            return 0;
        }

        Integer maxNumber = numList[0];
        Integer minNumber = numList[0];

        for(Integer num : numList){
            if(num < minNumber){
                minNumber = num;
            }
            if( num > maxNumber){
                maxNumber = num;
            }
        }
        return maxNumber - minNumber;
    }
}
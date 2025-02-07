public with sharing class SumCalculator {
    public Integer sumOfCubes(List<Integer> numberList){
        if(numberList == null || numberList.isEmpty()){
            return 0;
        }

        Integer sumOfCubes = 0;

        for(Integer num : numberList){
            sumOfCubes += (Integer)Math.pow(num, 3);
        }
        return sumOfCubes;
    }
}
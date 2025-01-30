public with sharing class ListProcessor {
    public List<Integer> removeGreaterThanTen(List<Integer> inputList) {
        if(inputList == null || inputList.isEmpty()){
            return new List<Integer>();
        }
        // remove all numbers > 10
        Integer i = 0;
        while(i < inputList.size()){
            if(inputList.get(i) > 10){
                inputList.remove(i);
            }else{
                i++; //only increment when item not removed. if item removed the lsit indexs will change
            }
        }
        return inputList;
    }

    public List<Integer> removeMultiplesOfThree(List<Integer> inputList){
        if(inputList == null || inputList.isEmpty()){
            return new List<Integer>();
        }
        Integer i = 0;
        while(i < inputList.size()){
            if(Math.mod(inputList.get(i), 3) == 0 ){
                inputList.remove(i);
            }else{
                i++; //only increment when item not removed. if item removed the lsit indexs will change
            }
        }
        return inputList;
    }

    public Boolean endsForce(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return false;
        }
        Integer i = 0;
        while(i < inputList.size()){
            if(inputList.get(i) != null && inputList.get(i).endsWith('force')){
                return true;
            }
            i++;
        }
        return false;
    }

    public Integer removeAndCountZeroes(List<Integer> inputList){
        if(inputList == null || inputList.isEmpty()){
            return 0;
        }
        Integer zeroCounter = 0;
        Integer i = 0;
        while(i < inputList.size()){
            if(inputList.get(i) == 0 ){
                inputList.remove(i);
                zeroCounter++;
            }else{
                i++; //only increment when item not removed. if item removed the lsit indexs will change
            }
        }
        return zeroCounter;
    }
}
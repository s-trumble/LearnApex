public with sharing class MiddleElementFinder {
    public List<Integer> findMiddleElement(List<Integer> integers) {

        List<Integer> result = new List<Integer>();
        if(integers == null || integers.isEmpty()){
            return result;
        }
        Integer listLength = integers.size();
        Integer middleIndex = listLength/2;
        if(Math.mod(listLength, 2) == 0){
            //even
            result.add(integers[middleIndex-1]);
            result.add(integers[middleIndex]);
        } else {
            //odd get single middle element
            result.add(integers[middleIndex]);
        }
        return result;
    }
}
public with sharing class MultipleFinder {
    public List<Integer> findMultiplesOfThree(Integer start, Integer endRange) {
        List<Integer> multiplesOfThree = new List<Integer>();
        
        for(Integer i = start ; i <= endRange ; i++){
            if(Math.mod(i,3) == 0){
                multiplesOfThree.add(i);
            }
        }
        return multiplesOfThree;
    }
}
public with sharing class DuplicateCharacterCounter {
    public DuplicateCharacterCounter() {

    }

    public Integer countDuplicates(String input){
        if(input == null || input == ''){
            return 0;
        }

        Map<String, Integer> charCountMap = new Map<String,Integer>();
        List<String> inputAsList = input.split('');
     

        for(String character : inputAsList){
            if(charCountMap.containsKey(character)){
                charCountMap.put(character, charCountMap.get(character) + 1);
            } else {
                charCountMap.put(character, 1);
            }
        }

        //find highest count
        Integer maxDuplicates = 0;
        for(Integer count : charCountMap.values()){
            if(count > maxDuplicates){
                maxDuplicates = count;
            }
        }
        return maxDuplicates > 1 ?  maxDuplicates : 0;
    }
}
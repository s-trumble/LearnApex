public with sharing class MapsExamples {
    public MapsExamples() {

    }

    public Map<String, Integer> countWords(List<String> words){
        Map<String,Integer> wordToCount = new Map<String,Integer>();

        for(String word: words){
            if(wordToCount.containsKey(word.toLowerCase())){
                Integer value = wordToCount.get(word);
                wordToCount.put(word.toLowerCase(), value + 1);
            } else {
                wordToCount.put(word.toLowerCase(), 1);
            }
        }
        return wordtoCount;
    }

    public Integer countOccurences(Map<String,String> inputMap, String targetValue){
        Set<String> words = inputMap.keySet();
        Integer occurences = 0;

        for(String word : words){
            if(inputMap.get(word) == targetValue){
                occurences++;
            }
        }
        return occurences;
    }
}
public with sharing class MapsExamples {
    public MapsExamples() {

    }

    public Map<String, Integer> countWords(List<String> words){
        Map<String,Integer> wordToCount = new Map<String,Integer>();

        for(String word: words){
            if(wordToCount.containsKey(word)){
                Integer value = wordToCount.get(word);
                wordToCount.put(word, value + 1);
            } else {
                wordToCount.put(word, 1);
            }
        }
        return wordtoCount;
    }
}
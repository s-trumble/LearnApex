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

    public Integer findKey(Map<Integer, String> inputMap, String targetValue) {
        Set<Integer> nums = inputMap.keySet();
        for(Integer num : nums){
            if(inputMap.get(num) == targetValue){
                return num;
            }
        }
        return -1;
    }

    public Map<Integer, String> invertMap(Map<String, Integer> inputMap) {
        Set<String> words = inputMap.keySet();
        Map<Integer, String> invertedMap = new Map<Integer,String>();

        for(String word : words){
            invertedMap.put(inputMap.get(word), word);
        }
        return invertedMap;
    }

    public void task8(){
        Map<String, Integer> ourMap = new Map<String, Integer>{'Igor' => 25, 'Temitayo' => 34, 'Ayse' => 32, 'Fatih' => 26, 'Jonathan'=>44, 'Tina'=>28};  
        Integer sumAges = 0;
        Integer sumChars = 0;

        Set<String> words = ourMap.keySet();
        for(String word : words){
            sumAges += ourMap.get(word);
            sumChars += word.length();
        }
    }

    public Map<String,Integer> charOccurrences(String str){
        str = str.deleteWhitespace();
        List<String> letters = str.split('');
        Map<String,Integer> occurences = new Map<String,Integer>();

        for(String letter : letters){
            if(occurences.containsKey(letter)){
                occurences.put(letter, occurences.get(letter) + 1);
            } else {
                occurences.put(letter, 1);
            }
        }
        return occurences;
    }
}
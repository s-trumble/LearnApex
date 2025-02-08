public with sharing class WordsUtil {
    public Boolean letterNotInWords(String letter, List<String> words) {
        if(words == null || words.isEmpty()){
            return false;
        }
        for(String word : words){
            if(word.contains(letter)){
                return false;
            }
        }
        return true;
    }
}
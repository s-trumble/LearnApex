public with sharing class WordPluralizer {
    public WordPluralizer() {

    }

    public Set<String> pluralize(List<String> singularWords){
        Set<String> pluralWords = new Set<String>();

        Map<String,Integer> wordCount = new Map<String,Integer>();

        for(String word : singularWords){
            if(wordCount.containsKey(word)){
                wordCount.put(word, wordCount.get(word) + 1);
            } else {
                wordCount.put(word, 1);
            }
        }
        for(String word : wordCount.keySet()){
            if(wordCount.get(word) > 1){
                pluralWords.add(word + 's');
            } else {
                pluralWords.add(word);
            }
        }
        return pluralWords;
    }
}
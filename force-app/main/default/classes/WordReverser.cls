public with sharing class WordReverser {
    public List<String> reverseWordsAndOrder(List<String> words) {

        List<String> reversedList = new List<String>();
        for(Integer i = words.size() - 1 ; i >=0 ; i--){
            reversedList.add(words[i].reverse());
        }
        return reversedList;
    }
}

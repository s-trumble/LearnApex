public with sharing class WordCounter {
    public Integer countWordsMethod(String input) {
        Integer numOfWords = 0;
        if(String.isBlank(input)){
            return numOfWords;
        }
        input = input.normalizeSpace();
        List<String> inputs = input.split(' ');
        numOfWords = inputs.size();
        return numOfWords;
    }

}
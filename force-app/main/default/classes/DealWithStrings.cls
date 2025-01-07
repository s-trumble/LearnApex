public with sharing class DealWithStrings {
    /*
    Write a method named 'numberOfWords' that takes a string variable and returns an Integer variable 
    representing the number of words in the string after removing leading, trailing, and 
    repeating white space characters from it.
    */
    public Integer numberOfWords(String input) {
        
        input = input.normalizeSpace();
        List<String> inputs = input.split(' ');
        Integer numOfWords = inputs.size();
        return numOfWords;
    }
}
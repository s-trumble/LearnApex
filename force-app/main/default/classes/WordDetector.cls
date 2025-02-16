public with sharing class WordDetector {
    public WordDetector() {

    }

    public String detectWord(String code){
        if(code == null || code == ''){
            return '';
        }
        String hiddenWord = '';
        for(String letter : code.split('')){
            if(letter.isAllLowerCase()){
                hiddenWord += letter;
            }
        }
        return hiddenWord;
    }
}
public with sharing class SecretCodeDetector {
    public String findSecretCode(String input) {
        String hiddenCode = '';

        if(String.isBlank(input)){
            return hiddenCode;
        }
        for(Integer i = 0 ; i < input.length() ; i++ ){
            String currentChar = input.substring(i, i + 1);
            if(currentChar.isNumeric()){
                hiddenCode += currentChar;
            }
        }
        return hiddenCode;
    }
}
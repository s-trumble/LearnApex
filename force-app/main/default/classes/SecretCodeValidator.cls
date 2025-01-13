public with sharing class SecretCodeValidator {
    public Boolean validateCode(String password) {
        Integer passwordLength = password.length();
        
        if(passwordLength != 6){
            return false;
        }

        if(!password.startsWith('Cod')){
            return false;
        }

        if(!password.isAlphanumeric()){
            return false;
        }
        Boolean hasDigit = false;
        Pattern digitPattern = Pattern.compile('\\d');

        Integer countUpperCase = 0;
        Pattern upperCasePattern = Pattern.compile('[A-Z]');
        Pattern lowerCasePattern = Pattern.compile('[a-z]');
        Integer countLowerCase = 0;
        
        for(Integer i = 0 ; i < passwordLength ; i++){
            String p = password.substring(i, i + 1);
        
            //check if digit
            if(digitPattern.matcher(p).find()){
                hasDigit = true;
            }
            //check and count uppercase
            if(upperCasePattern.matcher(p).find()){
                countUpperCase++;
            }

            if(lowerCasePattern.matcher(p).find()){
                countLowerCase++;
            }
        }

        //need at least one digit
        if(!hasDigit){
            return false;
        }

        //more upper than lower
        if(countUpperCase <= countLowerCase){
            return false;
        }

        return true;
    }
}
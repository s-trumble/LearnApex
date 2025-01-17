public class StringUtils {
    public Boolean isVowelSandwich(String word){
        Boolean result;
        
        Boolean secondLetter = false;
        if(word == null){
            return false;
        }
        if(word.length() != 3 ){
            system.debug('length:'+ word.length());
            return false;
        }
        word = word.toLowerCase();
        String vowels = 'aeiou';
        
        Boolean firstLetterCon = !vowels.contains(word.substring(0,1));
        Boolean secondLetterVow = vowels.contains(word.substring(1,2));
        Boolean thirdLetterCon = !vowels.contains(word.substring(2,3));
        
        result = firstLetterCon && secondLetterVow && thirdLetterCon;
        system.debug(result);
        return result;
    }
    
    public List<String> parseStateCapitals(String stateCapitals, String del1, String del2){
        List<String> stateCapitalPairs = new List<String>();
        if(stateCapitals == null || String.isEmpty(stateCapitals)){
            return stateCapitalPairs;
        }
        if(del1 == null || del2 == null){
            return stateCapitalPairs;
        }
        stateCapitals = stateCapitals.replaceAll(Pattern.quote(del1), ' - ');
        System.debug('Replace all: ' + stateCapitals);
        stateCapitalPairs = stateCapitals.split(Pattern.quote(del2));
        return stateCapitalPairs;
    } 
    
        public Boolean checkNumberToLeft(String str){
        Boolean result = false;

        if(String.isBlank(str)){
            return false;
        }

        if(str.length() < 6){
            return false;
        }

        String leftSix = str.substring(0,6);
        List<String> stringList = leftSix.split('');
        system.debug(stringList);
            for(String letter : stringList){
                if(letter.isNumeric() == true){
                    result = true;
                    system.debug(result);
                    return result;
                }
            }
        
        system.debug(result);
        return result;
    }
    
    public Integer splitByCharacterTypeCount(String input){
        if(String.isBlank(input)){
            return 0;
        }
        List<String> splitCharType = input.splitByCharacterType();
        Integer listSize = splitCharType.size();
        return listSize;
    }

    public Boolean isIsogram(String word){
        /*Create a method named 'isIsogram' that takes a string as a parameter and 
        returns a boolean value. If the given string is an isogram, the method should 
        return true; otherwise, it should return false. 

        An isogram is a word or phrase without any repeating letters; 
        that is, no letter appears more than once. 
        Assume the given string consists of all letters.
        */    
        if(String.isBlank(word)){
            return false;
        }
        Integer wordlength = word.length();
        Set<String> wordSet = new Set<String>(word.toLowerCase().split(''));
        if(wordlength == wordSet.size()){
            return true;
        } else {
            return false;
        }
    }
    

    public void calculateAsciiSumUntilThirdP(String saying) {
        Integer pCount = 0;
        Integer sumASCII = 0;

   
        for (Integer i = 0; i < saying.length(); i++) {
            if (saying.substring(i,i+1).toLowerCase() == 'p') {
                pCount ++;
                if (pCount == 3) {
                    break;
                }
            }
            sumASCII += saying.charAt(i);
        }
        system.debug('Sum of ASCII values until third "p": ' + sumASCII);
    }

    public String capToFront(String input){
        
        if(String.isBlank(input)){
            return input;
        }
        String upperCase = '';
        String lowerCase = '';

        for(Integer i = 0; i < input.length() ; i++){
            if(input.substring(i , i + 1).isAllUpperCase()){
                upperCase += input.substring(i , i + 1);
            } else {
                lowerCase += input.substring(i , i + 1);
            }
        }
        String result = upperCase + lowerCase;
        
        return result;
    }
}
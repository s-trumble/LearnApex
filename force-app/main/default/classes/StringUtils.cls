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
    
    
}
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

    public Integer countLowercaseLetters(String input){
        Integer lowerCaseLetters = 0;

        if(String.isBlank(input)){
            return lowerCaseLetters;
        }

        for(Integer i = 0 ; i < input.length() ; i++){
            if(input.substring(i,i+1).isAllLowerCase()){
                lowerCaseLetters++;
            }
        }
        return lowerCaseLetters;
    }

    public String concatenateUppercaseLetters(String input){
        String result = '';

        if(String.isBlank(input)){
            return result;
        }

        for(Integer i = 0 ; i < input.length() ; i++){
            if(input.substring(i, i + 1).isAllUpperCase()){
                result += input.substring(i, i + 1);
                if(i < input.length() - 1){
                    result += '*';
                }
            }
        }
        return result;
    }

    public List<String> getEveryFifthElement(List<String> strings){
        List<String> everyFifthElement = new List<String>();

        if(strings == null || strings.isEmpty()){
            return everyFifthElement;
        }

        for(Integer i = 0; i < strings.size() ; i += 5){
            everyFifthElement.add(strings[i]);
        }
        return everyFifthElement;
    }

    public String removeDuplicates(String input){
        String noDuplicates = '';
        if(String.isBlank(input)){
            return noDuplicates;
        }

        for(Integer i = 0 ; i < input.length() ; i++){
            if(!noDuplicates.contains(input.substring(i, i+1))){
                noDuplicates += input.substring(i, i+1);
            }
        }
        return noDuplicates;
    }

    public Integer countUpperCaseLetters(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return 0;
        }
        Integer total = 0;
        for(String word : inputList){
            if(word != null){
                List<String> letterSplit = word.split('');
                for(String letter : letterSplit){
                    if(letter.isAllUpperCase()){
                        total++;
                    }
                }
            }
        }
        return total;
    }

    public Integer sumOfDigitsInStrings(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return 0;
        }

        Integer sumOfDigits = 0;
        for(String word : inputList){
            List<String> characterSplit = word.split('');
            for(String character : characterSplit){
                if(character.isNumeric()){
                    sumOfDigits += Integer.valueOf(character);
                }
            }
        }
        return sumOfDigits;
    }

    public List<String> toggleCase(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return new List<String>();
        }
        List<String> result = new List<String>();
        for(String str : inputList){
            result.add(str.swapCase());
        }
        /*for(String word : inputList){
            String updatedWord = '';
            for(String letter : word.split('')){
                if(letter.isAllLowerCase()){
                    letter  = letter.toUpperCase();
                } else {
                    letter = letter.toLowerCase();
                }
                updatedWord += letter;
                
            }
            result.add(updatedWord);
        }*/
        return result;
    }

    public List<String> centerStrings(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return new List<String>();
        }

        String updatedString = '';
        List<String> updatedList = new List<String>();

        for(String str : inputList){
            if(str != null && !String.isEmpty(str)){
                updatedString = '***' + str + '***';
                updatedList.add(updatedString);
            }
        }
        return updatedList;
    }
}
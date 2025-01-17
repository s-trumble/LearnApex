public with sharing class StringToAsciiConverter {
    public List<Integer> convertToAscii(String input) {
        List<Integer> asciiValues = new List<Integer>();
        if(String.isBlank(input)){
            return asciiValues;
        }
        for(Integer i = 0 ; i < input.length() ; i++ ){
            asciiValues.add(input.charAt(i));
        }
        return asciiValues;
    }
}
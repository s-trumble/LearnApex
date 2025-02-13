public with sharing class AsciiToStringConverter {
    public AsciiToStringConverter() {

    }

    public String convertToString(List<Integer> asciiValues){
        if(asciiValues == null || asciiValues.isEmpty()){
            return '';
        }
        String result = '';
        result += String.fromCharArray(asciiValues);
        return result;
    }
}
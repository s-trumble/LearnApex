public with sharing class ASCIIPractice {
    public Boolean isUppercaseOnly(String input) {
        
        return String.isBlank(input) ? false : input.isAllUpperCase();
    }
}
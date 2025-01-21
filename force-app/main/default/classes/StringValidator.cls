public with sharing class StringValidator {
    public Boolean isValidPhoneNumberFormat(String phone) {
        // (XXX) XXX-XXXX, where X represents a digit between 0 and 9.

        if(String.isBlank(phone)){
            return false;
        }
        String regexPattern = '\\(\\d{3}\\)\\s\\d{3}-\\d{4}';
        Pattern pattern = Pattern.compile(regexPattern);
        Matcher matcher = pattern.matcher(phone);
        return matcher.matches();
    }

    public Boolean isValidPhoneNumberFormatWithLoop(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.length() != 14  || String.isEmpty(phoneNumber)) {
             return false;
         }
         
         if (!phoneNumber.startsWith('(') || !phoneNumber.substring(4, 5).equals(')') ||
             !phoneNumber.substring(5, 6).equals(' ') || !phoneNumber.substring(9, 10).equals('-')) {
             return false;
         }
         
         for (Integer i = 0; i < 14; i++) {
             if (i == 0 || i == 4 || i == 5 || i == 9) {
                 continue;
             }
             if (!phoneNumber.substring(i, i+1).isNumeric()) {
                 return false;
             }
         }
         
         return true;
     }
}
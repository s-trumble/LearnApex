/*
Apex Mobile is developing an innovative mobile application that allows users to customize their SMS messages. 
A key feature of the app is an options menu that enables users to select specific SMS operations. The options are:
A: Repeat the message twice
B: Replace spaces in the message with '_'
C: Remove digits from the message
D: Reverse the message

The software team at Apex Mobile wants you to create a class called SMSModifier and develop a method named modifySMS. 
The method should take an SMS message (as a String) and a character representing the user's choice (A, B, C, or D), 
perform the selected operation, and return the modified message.

The method should accept an SMS message (as a String) and a character (as a string) representing the user's choice (A, B, C, or D).
Based on the user's choice, the method should perform one of the following operations:
A: Repeat the message twice
B: Replace spaces in the message with '_'
C: Remove digits from the message
D: Reverse the message
*/
public with sharing class SMSModifier {
    public String modifySMS(String smsMessage, String userChoice) {
        if(String.isBlank(smsMessage)){
            return '';
        }
        if(userChoice == 'A'){
            return smsMessage + ' ' + smsMessage;
        } else if(userChoice == 'B'){
            return smsMessage.replaceAll(' ', '_');
        } else if (userChoice == 'C'){
            String regExp = '[1-9]';
            return smsMessage.replaceAll(regExp, '');
        } else if(userChoice == 'D'){
            return smsMessage.reverse();
        } else {
            return 'Invalid choice. Please select A, B, C, or D.';
        }
        

    }
}
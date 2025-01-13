public with sharing class PalindromeChecker {
    public Boolean isPalindrome(String input) {
        // Remove non-alphanumeric characters
        String cleanedInput = input.replaceAll('[^a-zA-Z0-9]', '').toLowerCase();
        
        // Check if the cleaned input is a palindrome
        return cleanedInput == cleanedInput.reverse();

    }
}
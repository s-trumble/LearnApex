public class PangramChecker {
    // Instance method to check if the input string is a pangram
    public Boolean isPangram(String input) {
        // Check for null or empty string
        if (input == null || input == '') {
            return false;
        }

        // Create a set to store unique letters
        Set<String> uniqueLetters = new Set<String>();

        // Convert the input string to lowercase and iterate over each character
        for (Integer i = 0; i < input.length(); i++) {
            String ch = input.toLowerCase().substring(i, i + 1);
            // Check if the character is a letter
            if (ch >= 'a' && ch <= 'z') {
                uniqueLetters.add(ch);
            }
        }

        // Check if the set contains all 26 letters of the alphabet
        return uniqueLetters.size() == 26;
    }
}

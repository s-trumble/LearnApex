public with sharing class SentenceSearcher {
    public String sentenceSearcher(String text, String word) {
        // Split the input text into sentences using the period (.) as a delimiter
        List<String> sentences = text.split('\\.');
        system.debug('sentences: ' + sentences);

        // Normalize the word to lower case for case-insensitive comparison
        word = word.toLowerCase();
        System.debug('word: ' + word);

        // Iterate through each sentence
        for (String sentence : sentences) {
            System.debug('Sentence in loop: ' + sentence);
            // Normalize the sentence to lower case and check if it contains the word
            if (sentence.toLowerCase().contains(word)) {
                // Return the sentence with a period at the end
                return sentence.trim() + '.';
            }
        }

        // If the word is not found in any sentence, return an empty string
        return '';
    }
}
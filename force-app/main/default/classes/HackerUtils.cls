public class HackerUtils {
    // Write your code here
    public String hackerSpeak(String sentence){
        System.debug('Sentence provided: ' + sentence);
        if(sentence == null ){
            return null;
        }
        if( sentence == ''){
            return '';
        }
        sentence = sentence.toLowerCase();
        System.debug('Sentence to lower case: ' + sentence);

        if(sentence.contains('a')){
            sentence = sentence.replaceAll('a','4');
        } 
        if(sentence.contains('e')){
            sentence = sentence.replaceAll('e','3');
        }
        if(sentence.contains('i')){
            sentence = sentence.replaceAll('i','1');
        }
        if(sentence.contains('o')){
            sentence = sentence.replaceAll('o','0');
        }
        if(sentence.contains('s')){
            sentence = sentence.replaceAll('s','5');
        }
        
        System.debug('Letters replaced: ' + sentence);
        
        return sentence;
    }
}
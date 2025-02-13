public with sharing class WordCounter {
    public Integer countWordsMethod(String input) {
        Integer numOfWords = 0;
        if(String.isBlank(input)){
            return numOfWords;
        }
        input = input.normalizeSpace();
        List<String> inputs = input.split(' ');
        numOfWords = inputs.size();
        return numOfWords;
    }

    public Integer countTwoWordElements(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return 0;
        }

        Integer twoWordElements = 0;

        for(String item : inputList){
            item = item.normalizeSpace(); // move leading, trailing, multiple spaces
            //two words will have single space
            if(item.countMatches(' ') == 1){
                twoWordElements++;
            }
        }
        return twoWordElements;
    }

}
public class ListUtils {
    public static List<Object> removeListFromList(List<Object> sourceList, List<Object> listToRemove){
        List<Object> finalList = new List<Object>();
        if(sourceList == null || listToRemove == null || sourceList.isEmpty() || listToRemove.isEmpty()){
            return sourceList;
        }
        
        for(Object item : sourceList){
            if(!listToRemove.contains(item)){
                finalList.add(item);
            }
        }
        return finalList;
    }

    public List<Integer> getCommonElements(List<Integer> list1, List<Integer> list2){
        if(list1 == null || list2 == null ){
            return null;
        }
        if(list1.isEmpty() || list2.isEmpty()){
            List<Integer> emptyList = new List<Integer>();
            return emptyList;
        }
        Set<Integer> commonSet = new Set<Integer>(list1);
        commonSet.retainAll(list2);
        
        return new List<Integer>(commonSet); 
    }

    public List<Integer> getGreaterNeighbors(List<Integer> nums){
        List<Integer> greatherNeighbors = new List<Integer>();

        if(nums == null || nums.isEmpty() || nums.size() < 3){
            return greatherNeighbors;
        }
        for(Integer i = 1 ; i < nums.size() - 1 ; i++){
            if(nums[i] > nums[i-1] && nums[i] > nums[i+1]){
                greatherNeighbors.add(nums[i]);
            }
        }
        return greatherNeighbors;
    }

    public List<String> getShorterLengthStrings(List<String> inputs){
        List<String> shorterLengthStrings = new List<String>();

        if(inputs == null || inputs.isEmpty() || inputs.size() < 3){
            return shorterLengthStrings;
        }
        for(Integer i = 1 ; i < inputs.size() - 1 ; i++){
            Integer iLength = inputs[i].length();
            if(iLength < inputs[i-1].length() && iLength < inputs[i+1].length()){
                shorterLengthStrings.add(inputs[i]);
            }
        }
        return shorterLengthStrings;
    }

    public List<Integer> addLists(List<Integer> list1, List<Integer> list2){
        List<Integer> sumList = new List<Integer>();
        if(list1 == null || list1.isEmpty() || list2 == null || list2.isEmpty()){
            return sumList;
        }

        for(Integer i = 0 ; i < list1.size() ; i++){
            sumList.add(list1[i] + list2[i]);
        }
        return sumList;
    }

    public List<String> reverseList(List<String> inputs){
        List<String> reverseList = new List<String>();

        if(inputs == null || inputs.isEmpty()){
            return reverseList;
        }

        for(Integer i = inputs.size() - 1 ; i >= 0 ; i-- ){
            reverseList.add(inputs[i]);
        }
        return reverseList;
    }

    public List<String> concatenateLists(List<List<String>> listOfLists){
        if(listOfLists == null || listOfLists.isEmpty()){
            return new List<String>();
        }
        List<String> result = new List<String>();

        for(List<String> eachList : listOfLists){
            result.addAll(eachList);
        }
        return result;
    }

    public List<Integer> mergeListsGreaterThanThree(List<List<Integer>> inputLists){
        List<Integer> result = new List<Integer>();
        
        if(inputLists == null || inputLists.isEmpty()){
            return result;
        }

        for(List<Integer> eachList : inputLists){
            if(eachList != null && !eachList.isEmpty() && eachList.size() > 3){
                result.addAll(eachList);
            }
        }
        return result;
    }

    public Boolean areAllIsograms(List<String> inputList){
        if(inputList == null || inputList.isEmpty()){
            return false;
        }

        for(String str : inputList){
            if(str == null || String.isEmpty(str)){
                return false;
            }
            //use set set so unique characters
            Set<String> strSet = new Set<String>(str.toLowerCase().split(''));
            //set size and string length should be equal for isogram
            if(strSet.size() != str.length()){
                return false;
            }
        }
        return true;
    }

    public String count0And1(List<Integer> nums){
        if(nums == null || nums.isEmpty()){
            return 'Input list is empty';
        }

        Integer numberOfZeros = 0;
        Integer numberOfOnes = 0;

        for(Integer num : nums){
            if(num == 0){
                numberOfZeros++;
            } else if(num == 1){
                numberOfOnes++;
            }
        }
        return 'Number of 0 is ' + numberOfZeros + ' and number of 1 is ' + numberOfOnes;
    }

    public Boolean isPositiveDominant(List<Integer> numbers) {
        // Check if the list is null or empty
        if (numbers == null || numbers.isEmpty()) {
            return false;
        }
        
        // Initialize sets to store unique positive and negative values
        Set<Integer> positiveSet = new Set<Integer>();
        Set<Integer> negativeSet = new Set<Integer>();
        
        // Iterate through each number in the list
        for (Integer num : numbers) {
            if (num > 0) {
                positiveSet.add(num);
            } else if (num < 0) {
                negativeSet.add(num);
            }
        }
        
        // Check if the number of unique positive values is strictly more than the number of unique negative values
        return positiveSet.size() > negativeSet.size();
    }

    public List<String> findCommonElements(List<String> elementsOne, List<String> elementsTwo){
        List<String> commonElements = new List<String>();
        if(elementsOne == null || elementsTwo == null || elementsOne.isEmpty() || elementsTwo.isEmpty()){
            return commonElements;
        }

        for(String element : elementsOne){
            if(elementsTwo.contains(element) && !commonElements.contains(element)){
                commonElements.add(element);
            }
        }

        return commonElements;
    }

    public Integer countVowelSandwiches(List<String> words){
        Integer vowelSandwiches = 0;
        if(words == null || words.isEmpty()){
            return vowelSandwiches;
        }

        String vowels = 'aeiou';
        for(String word : words){
            if(word != null && word.length() == 3){
                word = word.toLowerCase();
                Boolean firstLetterCon = !vowels.contains(word.substring(0,1));
                Boolean secondLetterVow = vowels.contains(word.substring(1,2));
                Boolean thirdLetterCon = !vowels.contains(word.substring(2,3));
                if(firstLetterCon && secondLetterVow && thirdLetterCon == true){
                    vowelSandwiches++;
                }
            }
            
        }
        return vowelSandwiches;
    }

    public void animalAdjectives(){
        List<String> animals=new List<String>{'bear', 'hawk', 'raccoon', 'impala', 'tiger'};
        List<String> adjectives=new List<String>{'determined', 'cunning', 'curious', 'brave', 'smart'};

    // Write your code here
        List<String> nickNames = new List<String>();    
        for(String animal : animals){
            for(String adjective : adjectives){
                nickNames.add(adjective + '-' + animal);
            }
        }
        system.debug(nickNames);
    }
}
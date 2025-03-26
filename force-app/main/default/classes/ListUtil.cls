public with sharing class ListUtil {
    public List<Integer> getFirstThreeElements(List<Integer> nums) {
        List<Integer> firstThree = new List<Integer>{0,0,0};
        if(!nums.isEmpty()){
            firstThree[0] = nums.size() > 0 ? nums[0] : 0;
            if(nums.size() > 1){
                firstThree[1] = nums[1];
            }
            if(nums.size() > 2){
                firstThree[2] = nums[2];
            }
        }
        return firstThree;
    }

    public List<Integer> getLastThreeElements(List<Integer> nums) {
        List<Integer> lastThree = new List<Integer>{-1,-1,-1};
        Integer length = nums.size();
        if(!nums.isEmpty()){
            lastThree[2] = nums[length - 1];
            if(length> 1){
                lastThree[1] = nums[length - 2];
            }
            if(length> 2){
                lastThree[0] = nums[length- 3];
            }
        }
        return lastThree;
    }
    public List<Integer> removeFirstElement(List<Integer> nums){

        if(nums == null || nums.isEmpty()){
            return nums;
        } else {
            nums.remove(0);
            return nums;
        }
    }
    public List<Account> insertAccountAtIndex(Integer index, Account account, List<Account> accounts){
        if(accounts == null || accounts.isEmpty()){
            return accounts;
        }
        Integer listSize = accounts.size();
        if(index < listSize ){
            accounts.add(index,account);
            
        }
        return accounts;
    }

    public List<Account> mergeAccountLists(List<Account> accounts1, List<Account> accounts2){
        for(Account account : accounts2){
            if(!accounts1.contains(account) && account != null){
                accounts1.add(account);
            }
        }
        return accounts1;
    }

    public List<Integer> prepareNumberList(List<Integer> inputList){
        if(inputList == null || inputList.isEmpty()){
            return new List<Integer>();
        }

        if(inputList.size() == 2){
            return inputList;
        }
        Integer firstElement = inputList.get(0) != null ? inputList.get(0) : 0;
        Integer lastElement = inputList.get(inputList.size() - 1) != null ? inputList.get(inputList.size() - 1) : 0;
        Integer sum = firstElement + lastElement;
        Integer average = Math.round(sum / 2.0);

        for(Integer i = 0; i < inputList.size() ; i++){
            if (inputList.get(i) == null || inputList.get(i) == 0) {
                inputList.set(i, average);
                System.debug('nums: ' + inputList);
            }
        }
        inputList.sort();
        System.debug('sorted: ' + inputList);
        return inputList;
    }

    //maps task 30
    public List<String> sortByLength(List<String> inputList){
        //check if null or empty
        if(inputList == null || inputList.isEmpty()){
            return inputList;
        }
        //create map to store strings with their lengths as keys,
        Map<Integer, List<String>> lengthMap = new Map<Integer,List<String>>();
        

        for(String word : inputList){
            Integer length = word.length();
            if(!lengthMap.containsKey(length)){
                lengthMap.put(length, new List<String>());
            }
            lengthMap.get(length).add(word);
        }

        //get the keys (lengths) and sort them
        List<Integer> lengths = new List<Integer>(lengthMap.keySet());
        lengths.sort();

        //create sorted list
        List<String> sortedList = new List<String>();
        for (Integer length : lengths){
            sortedList.addAll(lengthMap.get(length));
        }
        return sortedList;
    }
}
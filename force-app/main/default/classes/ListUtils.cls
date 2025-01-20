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
}
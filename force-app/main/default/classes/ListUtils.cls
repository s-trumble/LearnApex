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
}
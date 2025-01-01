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
}
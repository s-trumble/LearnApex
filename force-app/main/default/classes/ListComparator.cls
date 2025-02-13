public with sharing class ListComparator {
    public ListComparator() {

    }

    public Integer countMatchingElements(List<Integer> list1, List<Integer> list2){
        if(list1 == null || list2 == null){
            return 0;
        }
        if(list1.isEmpty() || list2.isEmpty()){
            return 0;
        }
        Integer matchingElements = 0;

        for(Integer num : list1){
            if(list2.contains(num)){
                matchingElements++;
            }
        }
        return matchingElements;
    }
}
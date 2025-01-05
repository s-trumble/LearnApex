public with sharing class ListsPractice {
    public List<String> returnThreeListElements(String string1, String string2, String string3) {
        List<String> strings = new List<String>();
        strings.add(string1);
        strings.add(string2);
        strings.add(string3);
        return strings;
    }

    public List<Integer> mergeTwoLists(List<Integer> list1, List<Integer> list2){
        list1.addAll(list2);
        return list1;
    }

    public Boolean doesListContainElement(List<String> listToTest, String input){
        Boolean result = listToTest.contains(input);
        return result;
    }
}
public with sharing class AnagramChecker {
    public Boolean areAnagrams(String input1, String input2) {
        if(String.isBlank(input1) || String.isBlank(input2)){
            return false;
        }

        if(input1.length() != input2.length()){
            return false;
        }
        input1.toLowerCase();
        input2.toLowerCase();
        List<Integer> input1list = new List<Integer>();

        for(Integer i = 0 ; i < input1.length() ; i++){
            input1List.add(input1.charAt(i));
            System.debug('input1 list: ' + input1list);
        }
        input1List.sort();
        System.debug('input1 list sorted: ' + input1list);

        List<Integer> input2list = new List<Integer>();

        for(Integer i = 0 ; i < input2.length() ; i++){
            input2List.add(input2.charAt(i));
            System.debug('input2 list: ' + input2list);
        }
        input2List.sort();
        System.debug('input2 list sorted: ' + input2list);
        
        return input1list == input2list;
    }
}
public with sharing class StringListModifier {
    
    public List<String> addStringAfterEach(List<String> inputList, String str){
        
        if(inputList == null || inputList.isEmpty()){
            return new List<String>();
        }

        List<String> updatedList = new List<String>();

        for(String input : inputList){
            if(input == null){
                input = str;
                updatedList.add(input);
            } else if(input.length() <5){
                input += str;
                updatedList.add(input);
            }
        }
        return updatedList;
    }
}
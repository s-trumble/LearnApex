public class StringListsPractice {
    public String concatenateList(List<String> listStrings){
        String allStrings = '';
        for(String word : listStrings){
            allstrings += word;
        }
        return allStrings;
    }
	
    public List<String> reverseWordsAndOrder(List<String> forwardList){
        List<String> reversedList = new List<String>();
        system.debug('fwd list:' + forwardList);
        
        for(Integer i = forwardList.size() - 1; i >= 0 ; i--){
            reversedList.add(forwardList[i].reverse());
        }
        system.debug('letters reversed: ' + reversedList);
        return reversedList;
    }
}
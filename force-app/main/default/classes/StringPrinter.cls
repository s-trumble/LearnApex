public with sharing class StringPrinter {
    public Boolean breakOnString(List<String> strings, String target) {
        if (strings == null || strings.isEmpty()) {
            System.debug('Input string list is null or empty.');
            return false;
        }
        
        Integer index = 1;
        for (String str : strings) {
            System.debug('Current string: ' + str);
            if (str.equalsIgnoreCase(target)) {
                // Exit the loop if the target string is found
                System.debug('Target string ' + target + ' found at index ' + index);
                break;
            }
            index++;
        }
        
        // If the target string is not found
        if (index > strings.size()) {
            System.debug('Target string ' + target + ' not found.');
            return false;
        }
        return true;
    }
}
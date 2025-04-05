public with sharing class BookingComparator implements Comparator<Map<String, Object>> {
    
    public Integer compare(Map<String, Object> booking1, Map<String, Object> booking2) {
        // We need to compare the startTime of booking1 and booking2
        DateTime startTime1 = (DateTime)booking1.get('startTime');
        DateTime startTime2 = (DateTime)booking2.get('startTime');
        
        // Compare the two DateTime values
        if (startTime1 < startTime2) {
            return -1;
        } else if (startTime1 > startTime2) {
            return 1;
        } else {
            return 0;
        }
    }
}
public with sharing class RoomScheduler {
    //No need for instance variables or constructor
    public RoomScheduler() { 
    }

    public Map<String,Integer> findAvailableRooms(List<Map<String,Object>> rooms){
        Map<String,Integer> availableSlotsMap = new Map<String,Integer>();

        for(Map<String,Object> room : rooms){
            String roomName = (String)room.get('roomName');
            List<Map<String,Object>> bookings = (List<Map<String,Object>>)room.get('bookings');

            bookings.sort(new BookingComparator());

            Integer availableSlots = countAvailableSlots(bookings);

            availableSlotsMap.put(roomName, availableSlots);
        }
        return availableSlotsMap;
    }

    private Integer countAvailableSlots(List<Map<String,Object>> bookings){
        Integer slots = 0;
        // If there are less than 2 bookings, there are no gaps between bookings
        if (bookings.size() < 2) {
            return 0;
        }
        for(Integer i = 0 ; i < bookings.size() - 1 ; i++){
            Datetime currentEndTime = (Datetime)bookings[i].get('endTime');
            Datetime nextStartTime = (Datetime)bookings[i+1].get('startTime');

            //if there is a gap then increment
            if(currentEndTime < nextStartTime){
                slots++;
            }
        }

        return slots;
    }
}
public with sharing class ParkingTracker {
    private Map<String, Integer> parkingDurations;
    public ParkingTracker() {
        parkingDurations = new Map<String,Integer>();
    }

    public void addParkingDuration(String licensePlate, Integer hours){
        if(parkingDurations.containsKey(licensePlate)){
            parkingDurations.put(licensePlate, parkingDurations.get(licensePlate) + hours);
        } else{
            parkingDurations.put(licensePlate, hours);
        }
    }

    public Map<String,Decimal> calculateFees(){
        Map<String,Decimal> fees = new Map<String,Decimal>();

        for(String licensePlate : parkingDurations.keySet()){
            Decimal fee = parkingDurations.get(licensePlate) * 5.0;
            fees.put(licensePlate, fee);
        }

        return fees;
    }
}
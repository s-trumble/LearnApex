public with sharing class TrainCapacityChecker {
    public TrainCapacityChecker() {

    }

    public Integer findSeat ( Integer maxCapacity, List<TrainCarriage> carriages){
        Integer halfCapacity = (maxCapacity / carriages.size()) / 2;
        
        for(TrainCarriage carriage : carriages){
            if(carriage.passengerCount <= halfCapacity){
                return carriage.carriageIndex;
            }
        }
        return -1;
    }
}
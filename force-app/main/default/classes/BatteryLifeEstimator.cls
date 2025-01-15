public with sharing class BatteryLifeEstimator {
    public Decimal estimateBatteryLife(Decimal initialBatteryLife, Integer numberOfApplications) {
        Decimal remainingBattery = initialBatteryLife;
        system.debug('starting battery: ' + initialBatteryLife);
        
        for(Integer i = 0 ; i < numberOfApplications ; i++){
            remainingBattery *= 0.95; //5% reduction
            System.debug('remaining battery: ' + remainingBattery);
        }
        return remainingBattery.setScale(1, RoundingMode.HALF_UP);
    }
}
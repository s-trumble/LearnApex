public with sharing class CustomerValueCalculator {
    public CustomerValueCalculator() {

    }

    public Map<String,Decimal> calculateLifetimeValue(List<PurchaseRecord> purchaseRecords){
        Map<String,Decimal> lifetimeValueMap = new Map<String,Decimal>();

        for(PurchaseRecord record : purchaseRecords){
            if(lifetimeValueMap.containsKey(record.customerId)){
                lifetimeValueMap.put(record.customerId, lifetimeValueMap.get(record.customerId) + record.purchaseAmount);
            } else {
                lifetimeValueMap.put(record.customerId, record.purchaseAmount);
            }
        }
        return lifetimeValueMap;
    }
}
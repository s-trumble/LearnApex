public with sharing class RevenueCalculator {
    
    public Map<String,Decimal> calculateAnnualRevenue(List<TransactionRecord> transactionRecords){
        Map<String,Decimal> annualRevenue = new Map<String,Decimal>();

        for(TransactionRecord record : transactionRecords){
            System.debug('Processing record: ' + record);
            Decimal amount = record.amount == null ? 0 : record.amount;
            if(annualRevenue.containsKey(record.accountId)){
                annualRevenue.put(record.accountId, annualRevenue.get(record.accountId) + amount);
            } else {
                annualRevenue.put(record.accountId, amount);
            }
        }
        System.debug('Annual Revenue: ' + annualRevenue);
        return annualRevenue;
    }
}
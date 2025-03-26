public with sharing class HighValueCustomerFinder {
    
    public List<CustomerTotal> findHighValueCustomers(List<Transactions> transactionRecords, Decimal threshold){
        List<CustomerTotal> customerTotals = new List<CustomerTotal>();

        if(transactionRecords == null || transactionRecords.isEmpty()){
            return customerTotals;
        }
        Map<String,Decimal> customerBalancesMap = new Map<String,Decimal>();
        //calc balance
        for(Transactions record : transactionRecords){
            if(customerBalancesMap.containsKey(record.customerId)){
                customerBalancesMap.put(record.customerId, customerBalancesMap.get(record.customerId) + record.transactionAmount);
            } else {
                customerBalancesMap.put(record.customerId, record.transactionAmount);
            }
        }
        //compare balance to threshold and add to list
        for(String customerId : customerBalancesMap.keySet()){
            Decimal balance = customerBalancesMap.get(customerId);
            if(balance >= threshold){
                customerTotals.add(new CustomerTotal(customerId, balance));
            }
        }
        return customerTotals;
    }
}
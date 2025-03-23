public with sharing class OutstandingBalanceFinder {
    public List<CustomerBalance> findCustomersWithOutstandingBalances(List<Transactions> customerTransactions){
        List<CustomerBalance> customerBalances = new List<CustomerBalance>();

        if(customerTransactions == null || customerTransactions.isEmpty()){
            return customerBalances;
        }
        Map<String, Decimal> customerBalancesMap = new Map<String,Decimal>();
        for(Transactions record : customerTransactions){
            if(customerBalancesMap.containsKey(record.customerId)){
                customerBalancesMap.put(record.customerId, customerBalancesMap.get(record.customerId) + record.transactionAmount);
            } else {
                customerBalancesMap.put(record.customerId, record.transactionAmount);
            }
        }

        for(String customerId : customerBalancesMap.keySet()){
            Decimal balance = customerBalancesMap.get(customerId);
            customerBalances.add(new CustomerBalance(customerId, balance));
        }
        return customerBalances;
    }
}
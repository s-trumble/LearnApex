public with sharing class MarketBasketAnalyzer {

    public Map<String, Integer> findFrequentItemsets(List<Map<String, Object>> transactions){
        Map<String,Integer> frequentItemCounts = new Map<String,Integer>();

        for(Map<String,Object> tran : transactions){
            String transactionId = (String)tran.get('transactionId');
            List<String> items = (List<String>)tran.get('items');

  
            for(String item : items){
                if(frequentItemCounts.containsKey(item)){
                    frequentItemCounts.put(item, frequentItemCounts.get(item) + 1);
                } else {
                    frequentItemCounts.put(item, 1);
                }
            }


        }
        return frequentItemCounts;
    }
}

/*
Write a method named `findFrequentItemsets` in the `MarketBasketAnalyzer` class. 
This method should take a list of maps, where each map represents a transaction with its `transactionId` and a list of items. 
The method should return a map where the keys are item names and the values are the counts of how often each item appears across all transactions.

Method Signature:
public Map<String, Integer> findFrequentItemsets(List<Map<String, Object>> transactions)

Input Structure:

- transactions: A List of Map<String, Object>, where each Map represents a transaction.

Each transaction map in the transactions list should contain the following keys:

- transactionId (String or Integer): An identifier for the transaction.
- items (List<String>): A list of items in the transaction.
*/
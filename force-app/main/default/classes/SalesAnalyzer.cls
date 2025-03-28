public with sharing class SalesAnalyzer {
    public List<Integer> findMiniPeaks(List<Integer> sales) {
        List<Integer> miniPeaks = new List<Integer>();

        for (Integer i = 1 ; i < sales.size() - 1 ; i++) {
            if(sales[i] > sales[i-1] && sales[i] > sales[i+1]){
                miniPeaks.add(sales[i]);
            }            
        }
        return miniPeaks;
    }

    public Map<String,List<Decimal>> calculateMonthlySales(List<Map<String,Object>> stores){
        //init result map
        Map<String,List<Decimal>> storeSalesMap = new Map<String,List<Decimal>>();

        //iterate each store
        for(Map<String,Object> store : stores){
            String storeName = (String)store.get('storeName');
            List<Map<String,Object>> salesData = (List<Map<String,Object>>)store.get('salesData');

            //init monthly sales map for a store
            Map<Integer, Decimal> monthlySalesMap = new Map<Integer,Decimal>();           

            //iterate through sales data
            for(Map<String,Object> saleData : salesData){
                //extract month as decimal e.g. 1 for jan
                Integer month = (Integer)saleData.get('month');
                Decimal salesAmount = (Decimal)saleData.get('salesAmount');

                //accumulate sales for the month
                if(monthlySalesMap.containsKey(month)){
                    monthlySalesMap.put(month, monthlySalesMap.get(month) + salesAmount);
                } else {
                    monthlySalesMap.put(month, salesAmount);
                }
                
            }
            //convert monthly sales map to a list
            List<Decimal> monthlySalesList = new List<Decimal>();
            for(Integer month : monthlySalesMap.keySet()){
                monthlySalesList.add(monthlySalesMap.get(month));
            }

            storeSalesMap.put(storeName, monthlySalesList);
        }
        return storeSalesMap;
    }
}

/* their solution

Our solution:

public class SalesAnalyzer {
    public Map<String, List<Decimal>> calculateMonthlySales(List<Map<String, Object>> stores) {
        Map<String, List<Decimal>> monthlySales = new Map<String, List<Decimal>>();
        
        for (Map<String, Object> store : stores) {
            String storeName = (String) store.get('storeName');
            List<Map<String, Object>> salesData = (List<Map<String, Object>>) store.get('salesData');
            Map<Integer, Decimal> salesByMonth = new Map<Integer, Decimal>();
            
            for (Map<String, Object> sales : salesData) {
                Integer month = (Integer) sales.get('month');
                Decimal salesAmount = (Decimal) sales.get('salesAmount');
                if (salesByMonth.containsKey(month)) {
                    salesByMonth.put(month, salesByMonth.get(month) + salesAmount);
                } else {
                    salesByMonth.put(month, salesAmount);
                }
            }
            
            List<Decimal> totalSalesPerMonth = new List<Decimal>();
            for (Integer month : salesByMonth.keySet()) {
                totalSalesPerMonth.add(salesByMonth.get(month));
            }
            
            monthlySales.put(storeName, totalSalesPerMonth);
        }
        
        return monthlySales;
    }
}
    */
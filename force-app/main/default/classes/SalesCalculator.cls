public with sharing class SalesCalculator {
    public SalesCalculator() {

    }
    // - calculateTotalSales: 
    //Returns a map where the keys are the names of the salespeople and the values are their total sales.

    public Map<String,Decimal> calculateTotalSales(List<SalesRecord> salesRecords){
        Map<String,Decimal> salesReport = new Map<String,Decimal>();

        for(SalesRecord sale : salesRecords){
            if(salesReport.containsKey(sale.salespersonName)){
                salesReport.put(sale.salespersonName, salesReport.get(sale.salespersonName) + sale.saleAmount);
            } else {
                salesReport.put(sale.salespersonName, sale.saleAmount);
            }
        }

        return salesReport;

    } 
}
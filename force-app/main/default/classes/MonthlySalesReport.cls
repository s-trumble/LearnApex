public with sharing class MonthlySalesReport {
    public MonthlySalesReport() {

    }

    public Map<String,Decimal> generateReport(List<SalesRecord> salesRecords){
        Map<String,Decimal> salesReport = new Map<String,Decimal>();
        for(SalesRecord sale : salesRecords){
            // Format the date as 'YYYY-MM'
            Integer year = sale.saleDate.year();
            Integer month = sale.saleDate.month();
            String salePeriod = year + '-' + String.valueOf(month).leftPad(2, '0');
            
            System.debug('Saleperiod: ' + salePeriod);
            
            //if put statement to see if new or existing key
            if(salesReport.containsKey(salePeriod)){
                salesReport.put(salePeriod, salesReport.get(salePeriod) + sale.saleAmount);
            } else {
                salesReport.put(salePeriod, sale.saleAmount);
            }
        }
        
        return salesReport;
    } 
}
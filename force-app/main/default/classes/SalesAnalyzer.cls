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
}
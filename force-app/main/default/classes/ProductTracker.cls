public with sharing class ProductTracker {
    public Integer totalProductCount(List<Integer> productCounts) {
        if(productCounts == null || productCounts.isEmpty()){
            return 0;
        }

        Integer totalProductCount = 0;
        for(Integer productCount : productCounts){
            totalProductCount += productCount;
        }
        System.debug('total: ' + totalProductCount);
        return totalProductCount;

    }
}
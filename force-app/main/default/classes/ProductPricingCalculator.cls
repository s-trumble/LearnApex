public class ProductPricingCalculator {
    public Decimal calculateProductPrice(Decimal cost, String category){
        Decimal profitMargin;
        
        if(category == 'outdoor'){
            profitMargin = (cost > 100) ? 0.20 : 0.15;
        } else {
            profitMargin = 0.10;
        }    
        
        Decimal sellingPrice = cost / (1 - profitMargin);
        return sellingPrice;
    }
}
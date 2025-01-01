public class DiscountCalculator {
    public Decimal calculateDiscount(Decimal totalAmount){
        Decimal discountAmount;
        
        if(totalAmount > 1000){
            discountAmount = totalAmount - (totalAmount * 0.10);
            return discountAmount;
        } else{
            discountAmount = totalAmount - (totalAmount * 0.05);
            return discountAmount;
        }
    }
}
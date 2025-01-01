public class CustomerCategoryAssigner {
    public String assignCustomerCategory(String customerName, Decimal orderAmount){
        String category;
        if(orderAmount == 100){
            category = 'Gold';
        } else {
            category  = 'Silver';
        }
        return customerName + ' is assigned to the ' + category + ' category with an order amount of $' + orderAmount + '.';
    }
}
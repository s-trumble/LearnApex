public with sharing class OrderValueCalculator {
    public OrderValueCalculator() {

    }
 //1) Define the method calculateCustomerOrderValue with the return type Map<String, Decimal> and a parameter customers of type List<Map<String, Object>>.
    public Map<String,Decimal> calculateCustomerOrderValue(List<Map<String,Object>> customers){
       
    //2) Initialize an empty map called orderValues.


        Map<String,Decimal> orderValues = new Map<String,Decimal>();
        //3) Use nested loops to iterate through the list of customers and their orders.
        for(Map<String, Object> customer : customers){
            String customerId = (String)customer.get('customerId');
            List<Map<String,Object>> orders = (List<Map<String,Object>>)customer.get('orders');

            Decimal totalOrderValue = 0;
            
            for(Map<String,Object> order : orders){
                Decimal orderValue = (Decimal) order.get('orderValue');
                totalOrderValue += orderValue;
                
            }
            //4) For each customer, calculate the total order value and store it in orderValues.
            orderValues.put(customerId, totalOrderValue);
        }
        //5) Return the orderValues.
        return orderValues;
    }
}
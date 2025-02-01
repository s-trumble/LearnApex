public with sharing class IntegerOperations {
    public Boolean isPowerOfTwo(Integer num) {
        if (num == null || num <= 0) {
               return false;
           }
           while (num > 1) {
            //checks for odd e.g. 9/2 will be 4, then 4*2 = 8. 9!=8 so will be false
               if (num / 2 * 2 != num) {
                   return false;
               }
               //keep halving until we get to 1 (8,4,2,1 true)
               num = num / 2;
           }
           return true;
       }
}
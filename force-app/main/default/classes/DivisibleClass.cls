public class DivisibleClass {
    public Boolean isDivisibleBy2And7(Integer num){
        if(math.mod(num,7) == 0 && math.mod(num,2) == 0){
            return true;
        }
        return false;
    }

}
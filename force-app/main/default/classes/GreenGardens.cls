public class GreenGardens {
    public Decimal calculateWateringAmount(Integer temp, Integer humidity){
        Decimal waterAmount;
        if(temp > 30 && humidity < 40){
            waterAmount = 1;
            return waterAmount;
        } else{
            waterAmount = 0.5;
            return waterAmount;
        }
    }

}
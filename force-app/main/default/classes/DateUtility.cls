public class DateUtility {
    public Boolean isMoreThan90DaysFromGivenDate(Date givenDate){
        Boolean result;
        
        Integer numberOfDays = Date.today().daysBetween(givenDate);
        numberOfDays = Math.abs(numberOfDays);
        result = numberOfDays > 90;
        
        return result;
    }
}
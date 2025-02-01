public class DateTasks {
    public Integer calculateAge(Date birthdate){
        Date todayDate = Date.today();
        Integer age = todayDate.year() - birthdate.year();
        
        if(todayDate.month() < birthdate.month()){
            age = age - 1;
        }
        if(todayDate.month() == birthdate.month() && todayDate.day() < birthdate.day()){
            age = age -1;
        }
        
        system.debug('age is:'+age);
        return age;
    }

    public Integer calculateBusinessDays(Date startDate, Date endDate){
        if(startDate == null || endDate == null){
            return 0;
        }
        if(startDate >= endDate){
            return 0;
        }
        Integer businessdays = 0;
        

        while(startDate <= endDate){
            // Cast the Date variable into a DateTime
        DateTime startDateTime = (DateTime) startDate;
        String dayOfWeek = startDateTime.format('E');
        // dayOfWeek is Sun, Mon, Tue, etc.
            if(dayOfWeek != 'Sat' && dayOfWeek != 'Sun'){
                businessdays++;
            }
            startDate = startDate.addDays(1);
        }

        System.debug('numberofbusinessdaysis:'+businessdays);
        return businessdays;
    }
}
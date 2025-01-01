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
}
       /*
        Integer daysBetween = birthdate.daysBetween(system.today());
        system.debug(daysBetween);
        Integer age = (Integer)Math.round(daysBetween/365.25);
        system.debug('age is:'+age);
        return age;

    }
}
*/
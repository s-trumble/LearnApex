public class SalaryCalculator {
    public Decimal calculateSalary(Integer hoursWorked, Decimal hourlyRate){
        Decimal salary;
        if(hoursWorked <= 40){
            salary = hoursWorked * hourlyRate;
            return salary;
        } else{
            salary = (40 * hourlyRate) + ((hoursWorked - 40) * 1.5 * hourlyRate);
            return salary;
        }
    }
}
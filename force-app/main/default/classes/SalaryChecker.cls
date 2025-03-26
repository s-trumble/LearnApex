public with sharing class SalaryChecker {
    public SalaryChecker() {

    }

    public Integer checkSalaries(Map<String,Decimal> salaries, Decimal salaryLimit){
        if(salaries == null || salaries.isEmpty()){
            return 0;
        }
        Integer salariesInLimit = 0;
        for(String name : salaries.keySet()){
            if(salaries.get(name) <= salaryLimit){
                salariesInLimit++;
            }
        }
        return salariesInLimit;
    }
}
public with sharing class BudgetCalculator {
    public BudgetCalculator() {

    }
    public Decimal calculateTotalBudget(List<Decimal> budgets, Decimal budgetLimit){
        Decimal total = 0;

        if(budgets == null || budgets.isEmpty()){
            return total;
        }

        for(Decimal budget : budgets){
            if(budget <= budgetLimit){
                total += budget;
            }
        }
        return total;
    }
}
public with sharing class FamilyBudget {
    private List<Decimal> expenses = new List<Decimal>();
    
    public void addExpense(Decimal expense) {
        expenses.add(expense);
    }

    public Decimal totalExpenses() {
        Decimal totalExpenses = 0;
        for (Decimal expense : expenses) {
            totalExpenses += expense;
        }
        return totalExpenses;
    }
    
    public Boolean withinBudget(Decimal budget) {
        Decimal totalExpenses = totalExpenses();
        return totalExpenses <= budget;
    }
}
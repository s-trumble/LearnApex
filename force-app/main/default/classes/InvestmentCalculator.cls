/*
InvestPro is looking to develop an investment calculation tool. Users will be able to enter their initial capital, 
annual interest rate, and the duration of the investment to calculate the future value of their investment. 
You need to create a method using assignment operators and a loop to calculate the value of the investment for 
each year and print the results on the screen.

The method name should be "calculateInvestmentValue".
The method should take a parameter named "initialAmount" of Decimal type, a parameter named "annualInterestRate" of 
Decimal type, and a parameter named "years" of Integer type.

Use assignment operators (=, +=) to calculate the value of the investment for each year.

Use a for loop to calculate the annual values of the investment and print the results.

At the end of the loop, return the final investment value.
*/
public class InvestmentCalculator {
    public Decimal calculateInvestmentValue(Decimal initialAmount, Decimal annualInterestRate, Integer years) {
        Decimal currentAmount = initialAmount;
        //convert 5% to 0.05
        annualInterestRate = annualInterestRate/100;
        for(Integer i = 1; i <= years ; i++){
            currentAmount += currentAmount * annualInterestRate;
            System.debug('Year: ' + i);
            System.debug('Amount: ' + currentAmount);
        }
        System.debug('Final value: ' + currentAmount);
        return currentAmount.setScale(3);
    }
}
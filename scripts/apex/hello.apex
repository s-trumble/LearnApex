// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

RevenueCalculator calculator = new RevenueCalculator();

List<TransactionRecord> transactionRecords = new List<TransactionRecord>();
transactionRecords.add(new TransactionRecord('Account1', null, Date.newInstance(2023, 1, 1)));
transactionRecords.add(new TransactionRecord('Account1', 2000.00, Date.newInstance(2023, 2, 1)));
transactionRecords.add(new TransactionRecord('Account2', 1500.00, Date.newInstance(2023, 1, 15)));
transactionRecords.add(new TransactionRecord('Account2', 2500.00, Date.newInstance(2023, 3, 1)));

Map<String, Decimal> annualRevenue = calculator.calculateAnnualRevenue(transactionRecords);

System.debug(annualRevenue); 
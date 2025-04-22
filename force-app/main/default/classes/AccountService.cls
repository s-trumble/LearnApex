public class AccountService {
    // Method to create a map of industry to accounts
    public Map<String, List<Account>> createIndustryMap(List<Account> accounts) {
        Map<String, List<Account>> industryMap = new Map<String, List<Account>>();
        
        for (Account account : accounts) {
            // If map already has industry, add account to the list
            if (industryMap.containsKey(account.Industry)) {
                industryMap.get(account.Industry).add(account);
            } else {
                // Initialize new list and add the account
                List<Account> accountList = new List<Account>();
                accountList.add(account);
                industryMap.put(account.Industry, accountList);
            }
        }
        return industryMap;
    }

    // Method to fill the description of accounts with related contacts
    public void fillDescriptionWithContacts(List<Account> accounts, Map<Id, List<Contact>> contactMap) {
        for (Account account : accounts) {
            // Check if map contains account Id
            if (contactMap.containsKey(account.Id)) {
                // Retrieve related contacts
                List<Contact> relatedContacts = contactMap.get(account.Id);
                
                // Extract contact names
                List<String> contactNames = new List<String>();
                for (Contact contact : relatedContacts) {
                    contactNames.add(contact.Name);
                }
                
                // Join contact names into a string
                account.Description = String.join(contactNames, ', ');
            }
        }
    }

    // Method to query accounts and their related contacts and update the descriptions
    public void updateAccountsWithContacts() {
        // Query all accounts and related contacts
        List<Account> accounts = [SELECT Id, Description, (SELECT Id, Name FROM Contacts) FROM Account];
        
        // Build a map of AccountId to List<Contact>
        Map<Id, List<Contact>> contactMap = new Map<Id, List<Contact>>();
        for (Account account : accounts) {
            if (account.Contacts != null) {
                contactMap.put(account.Id, account.Contacts);
            }
        }
        
        // Call method to fill descriptions with contact names
        fillDescriptionWithContacts(accounts, contactMap);
        
        // Update the accounts
        update accounts;
    }

    public void setIndustryToEducation(List<Account> accounts){
        for(Account account : accounts){
            if(account.Industry == null){
                account.Industry = 'Education';
            }
        }
    }
}
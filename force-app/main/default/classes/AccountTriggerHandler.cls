public with sharing class AccountTriggerHandler {
    public static void beforeInsert(List<Account> triggerDotNew, Map<Id, Account> triggerDotNewMap){
        AccountService service = new AccountService();
        service.setIndustryToEducation(triggerDotNew);
    }
}
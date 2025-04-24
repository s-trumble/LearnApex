public with sharing class AccountTriggerHandler {
    public static void beforeInsert(List<Account> triggerDotNew, Map<Id, Account> triggerDotNewMap){
        AccountService service = new AccountService();
        service.setIndustryToEducation(triggerDotNew);
    }

    public static void beforeUpdate(List<Account> triggerDotNew, Map<Id, Account> triggerDotNewMap, List<Account> triggerDotOld, Map<Id,Account> triggerDotOldMap){
        AccountService service = new AccountService();
        service.updateDescription(triggerDotNew);
    }
}
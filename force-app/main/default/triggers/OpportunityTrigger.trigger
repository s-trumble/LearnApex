trigger OpportunityTrigger on Opportunity (after update, before update) {
    //task 2
    if(trigger.isAfter && trigger.isUpdate){
        List<Task> tasks = new List<Task>();
        for(Integer i = 0 ; i < Trigger.new.size(); i++){
            Opportunity opp = Trigger.new[i];
            Opportunity oldOpp = Trigger.old[i];

            if(opp.StageName == 'Closed Lost' && oldOpp.StageName != 'Closed Lost'){
                
                Task task = new Task();
                task.Subject = 'Follow-up on lost opportunity';
                task.WhatId = opp.AccountId;
                task.ActivityDate = date.today().addDays(7);
                task.OwnerId = opp.OwnerId;
                tasks.add(task);
            }
            insert tasks;
        }
    }

    //task 4
    if(trigger.isBefore && trigger.isUpdate){
        
        for(Integer i = 0 ; i < Trigger.new.size(); i++){
            Opportunity opp = Trigger.new[i];
            Opportunity oldOpp = Trigger.old[i];

            if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won'){
                
                opp.CloseDate = Date.today();
            }
        }
    }

}
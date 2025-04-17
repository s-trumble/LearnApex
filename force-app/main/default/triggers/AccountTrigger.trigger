trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    //task 12
    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)) {
        for(Account acc : Trigger.new){
            System.debug('loop start');
            String standarddisedName = '';
            List<String> words = acc.Name.split(' ');
            System.debug('words list: ' + words);

            for(String word : words){
                System.debug('start word loop: ' + word);
                String capitalizeWord = word.capitalize();
                System.debug('capitalized word: ' + capitalizeWord);
                standarddisedName += capitalizeWord + ' ';
                System.debug('standardised name: ' + standarddisedName);    
            
            }
            System.debug('end loops');
            acc.Name = standarddisedName.trim();
            System.debug('name: ' + standarddisedName);
        }
    }

    if(Trigger.isBefore && (Trigger.IsInsert || Trigger.IsUpdate)){
        for(Account acc : Trigger.New){
            //task 10
            if(acc.Industry == 'Finance'){
                acc.Type = 'Customer - Direct';
            } else if (acc.Industry == 'Technology' ){
                acc.Type = 'Technology Partner';
            } else if(acc.Industry == 'Healthcare'){
                acc.Type = 'Prospect';
            }
        }
    }
    
    
    if (Trigger.isBefore && Trigger.isInsert) {
        
        for (Account account : Trigger.new) {
            //task 1
            // Before Insert: Set Industry to 'Education' if null
            if (account.Industry == null) {
                account.Industry = 'Education';
            }
        //task 5
            account.Rating = 'Warm';
        
        //task 6
            if(account.Website != null && account.Website.contains('edu')){
                account.Industry = 'Education';
            }
        }
        
    }

    //task 3
    // After Insert and Update: Create Opportunities for Banking Industry
    if (Trigger.isAfter) {
        List<Opportunity> oppsToInsert = new List<Opportunity>();

        for (Integer i = 0; i < Trigger.new.size(); i++) {
            Account acc = Trigger.new[i];
            Boolean shouldCreateOpp = false;

            if (Trigger.isInsert) {
                if (acc.Industry == 'Banking') {
                    shouldCreateOpp = true;
                }
            } else if (Trigger.isUpdate) {
                Account oldAcc = Trigger.old[i];
                if (acc.Industry == 'Banking' && oldAcc.Industry != 'Banking') {
                    shouldCreateOpp = true;
                }
            }

            if (shouldCreateOpp) {
                Opportunity opp = new Opportunity();
                opp.Name = acc.Name + ' - New Opportunity';
                opp.StageName = 'Prospecting';
                opp.CloseDate = Date.today().addMonths(1);
                opp.AccountId = acc.Id;
                oppsToInsert.add(opp);
            }
        }

        if (!oppsToInsert.isEmpty()) {
            insert oppsToInsert;
        }
    }
    //task7
    if(Trigger.isAfter && Trigger.isUpdate){
        List<Task> tasks = new List<Task>();

        for(Integer i = 0 ; i < Trigger.new.size() ; i++){
            Account acc = Trigger.new[i];
            Account oldAcc = Trigger.old[i];

            if(acc.AnnualRevenue > 1000000 && (oldAcc.AnnualRevenue <= 1000000 || oldAcc.AnnualRevenue == null)){
                Task task = new Task();
                task.WhatId = acc.Id;
                task.OwnerId = acc.OwnerId;
                task.Subject = 'Notify an admin account';
                task.ActivityDate = Date.today();
                tasks.add(task);
            }
        }
        if(!tasks.isEmpty()){
            insert tasks;
        }
    }
}

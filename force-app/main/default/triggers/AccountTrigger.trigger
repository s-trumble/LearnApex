trigger AccountTrigger on Account (before insert, after insert, after update) {
    
    //task 1
    // Before Insert: Set Industry to 'Education' if null
    if (Trigger.isBefore && Trigger.isInsert) {
        for (Account account : Trigger.new) {
            if (account.Industry == null) {
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
}

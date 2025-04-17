trigger LeadTrigger on Lead (before insert, before update) {
    //Task 11
    if(Trigger.isBefore && (Trigger.IsInsert || Trigger.IsUpdate)){
        for(Lead lead : Trigger.new){
            if(lead.AnnualRevenue > 10000000){
                lead.Rating = 'High';
            } else if(lead.AnnualRevenue >= 1000000){
                lead.Rating = 'Medium';
            } else if(lead.AnnualRevenue < 1000000 || lead.AnnualRevenue == null){
                lead.Rating = 'Low';
            }
        }
    }

}
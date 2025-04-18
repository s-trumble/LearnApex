public class OpportunityService {
    public List<Opportunity> createOpportunities(Integer n){
        List<Opportunity> opportunities = new List<Opportunity>();
        
        Decimal maxAmount = 300000.0;
        Decimal minAmount = 1000.0;

        
        for(Integer i = 0 ; i < n ; i++){
            Opportunity opp = new Opportunity();
            opp.Name = 'Test ' + i;
            opp.CloseDate = System.today().addDays(i);
            opp.StageName = 'Prospecting';
            opp.Amount = Math.round(Math.random() * (maxAmount-minAmount) + minAmount);
            opportunities.add(opp);
        }
        System.debug(opportunities);
        return opportunities;
    }
    
    public Double calculateTotalRevenue(List<Opportunity> opportunities){
        Double totalRevenue = 0;
        for(Opportunity opp : opportunities){
            totalRevenue += opp.Amount;
        }
        return totalRevenue;
    }
    
    public List<Opportunity> filterOpportunitiesByStage(List<Opportunity> opportunities , String stageName){
        List<Opportunity> filterOpps = new List<Opportunity>();
        for(Opportunity opp : opportunities){
            if(opp.StageName == stageName){
                filterOpps.add(opp);
            }
        }
        return filterOpps;
    }
    
        public List<Opportunity> filterClosedWonOpportunities(List<Opportunity> opportunities){
        List<Opportunity> closedWonOpps = new List<Opportunity>();
        for(Opportunity opp : opportunities){
            if(opp.StageName == 'Closed Won'){
                closedWonOpps.add(opp);
            }
        }
        return closedWonOpps;
    }
    
    public Map<String,Integer> summarizeOpportunityStages(List<Opportunity> opportunities){
        Map<String,Integer> oppsByStage = new Map<String,Integer>();
        
        for(Opportunity opportunity : opportunities){
            if(oppsByStage.containsKey(opportunity.StageName)){
                oppsByStage.put(opportunity.StageName, oppsByStage.get(opportunity.StageName)+1);
            } else {
                oppsByStage.put(opportunity.StageName, 1);
            }
        }
        return oppsByStage;
        //test save
    }    
    
    public Map<Id,Integer> countOpportunitiesPerAccount(List<Opportunity> opportunities){
        Map<Id,Integer> opportunitiesPerAccount = new Map<Id,Integer>();
        
        for(Opportunity opportunity : opportunities){
            if(opportunitiesPerAccount.containsKey(opportunity.AccountId)){
                opportunitiesPerAccount.put(opportunity.AccountId, opportunitiesPerAccount.get(opportunity.AccountId)+1);
            } else {
                opportunitiesPerAccount.put(opportunity.AccountId, 1);
            }
        }
        
        return opportunitiesPerAccount;
    }

    public void updateOpportunityCloseDates(String stageName, Integer daysToAdd){
        List<Opportunity> opps = [SELECT Id, StageName, CloseDate
                                    FROM Opportunity
                                    WHERE StageName = :stageName];
        
        for(Opportunity opp : opps){
            opp.CloseDate = opp.CloseDate.addDays(daysToAdd);
        }
        update opps;
    }

    public void closeOldOpportunities(Integer amountOfMonths){
        Date dateCompare = Date.today().addMonths(-amountOfMonths);
        System.debug('datecompare: ' + dateCompare); 
        
        List<Opportunity> opps = [SELECT Id, StageName, CloseDate, CreatedDate
                                FROM Opportunity
                                WHERE StageName != 'Closed Lost'
                                AND CloseDate < :dateCompare];
        system.debug('opps: ' + opps);

        for(Opportunity opp : opps){
            opp.StageName = 'Closed Lost';
        }

        update opps;
    }

    public void addTimeToOpportunities(Set<Id> accountIds, Integer amountOfDays){
        List<Opportunity> opps = [SELECT Id, CloseDate, AccountId
                                FROM Opportunity
                                WHERE AccountId IN :accountIds];

        for(Opportunity opp : opps){
            opp.CloseDate = opp.CloseDate.addDays(amountOfDays);
        }
        update opps;
    }
}
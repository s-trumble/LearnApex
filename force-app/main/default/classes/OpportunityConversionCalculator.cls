public with sharing class OpportunityConversionCalculator {
    public OpportunityConversionCalculator() {

    }

    public Map<String, Decimal> calculateConversionRate(List<OpportunityRecord> opportunityRecords) {
        Map<String, Decimal> winRates = new Map<String, Decimal>();
        Map<String, Integer> winTotal = new Map<String, Integer>();
        Map<String, Integer> oppTotal = new Map<String, Integer>();

        for (OpportunityRecord opp : opportunityRecords) {
            if (oppTotal.containsKey(opp.salesRepId)) {
                oppTotal.put(opp.salesRepId, oppTotal.get(opp.salesRepId) + 1);
            } else {
                oppTotal.put(opp.salesRepId, 1);
            }
            if (opp.isWon) {
                if (winTotal.containsKey(opp.salesRepId)) {
                    winTotal.put(opp.salesRepId, winTotal.get(opp.salesRepId) + 1);
                } else {
                    winTotal.put(opp.salesRepId, 1);
                }
            }
        }

        for (String salesRepId : oppTotal.keySet()) {
            Integer totalOpportunities = oppTotal.get(salesRepId);
            Integer wonOpportunities = winTotal.get(salesRepId) != null ? winTotal.get(salesRepId) : 0;
            Decimal conversionRate = (wonOpportunities * 100.0) / totalOpportunities;
            winRates.put(salesRepId, conversionRate);
        }
        return winRates;
    }
}
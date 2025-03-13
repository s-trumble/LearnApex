public with sharing class WebsiteAnalytics {

    public Map<String,Integer> pageVisits;
    public WebsiteAnalytics() {
        pageVisits = new Map<String,Integer>();
    }

    public void addPageVisits(String pageURL, Integer dailyVisits){
        if(pageVisits.containsKey(pageURL)){
            pageVisits.put(pageURL, pageVisits.get(pageURL) + dailyVisits);
        } else {
            pageVisits.put(pageURL, dailyVisits);
        }
    }

    public Integer totalVisits(){
        Integer totalVisits = 0;
        for(Integer visit : pageVisits.values()){
            totalVisits += visit;
        }

        return totalVisits;
    }
}
public with sharing class CustomerReviews {
    public List<String> reviews = new List<String>();

    public Integer wordCount() {
        Integer totalWords = 0;
        if(reviews.isEmpty()){
            return 0;
        }
        for(String review : reviews){
            List<String> words = review.split(' ');
            totalWords += words.size();
        }
        return totalWords;
    }
}
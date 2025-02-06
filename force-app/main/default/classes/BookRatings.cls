public with sharing class BookRatings {
    public List<String> bookNames;
    public List<Integer> ratings;
    public BookRatings() {
        bookNames = new List<String>();
        ratings = new List<Integer>();
    }

    public void addBookRating(String bookName, Integer rating){
        bookNames.add(bookName);
        ratings.add(rating);
    }

    public List<String> highestRatedBooks(){
        Integer highestRating = 0;
        for(Integer rating : ratings){
            if(rating > highestRating){
                highestRating = rating;
            }
        }

        List<String> highRateBooks = new List<String>();
        for(Integer i = 0 ; i < bookNames.size() ; i++){
            if(ratings[i] == highestRating){
                highRateBooks.add(bookNames[i]);
            }
        }
        return highRateBooks;
    }
}
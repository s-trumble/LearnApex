public with sharing class LibraryBorrowingTracker {
    public LibraryBorrowingTracker() {

    }
    /* keys
    Write a method named `calculateBorrowedBooks` in the `LibraryBorrowingTracker` class. This method should take a list of maps, where each map represents a library with its `libraryName` and a list of maps representing `borrowedBooks`. The method should return a map where the keys are library names and the values are the counts of borrowed books for each library.

Each library map in the libraries list should contain the following keys:

- libraryName (String): The name of the library.
- borrowedBooks (List<Map<String, Object>>): A list of maps, each representing a borrowed book.

Each borrowed book map in the borrowedBooks list should contain the following keys:

- bookTitle (String): The title of the borrowed book.
- borrowerId (String or Integer): An identifier for the borrower.
*/
    public Map<String, Integer> calculateBorrowedBooks(List<Map<String, Object>> libraries) {
        Map<String,Integer> borrowedBooksMap = new Map<String,Integer>();

        for(Map<String, Object> library : libraries){
            String libraryName = (String)library.get('libraryName');
            List<Map<String,Object>> borrowedBooks = (List<Map<String,Object>>)library.get('borrowedBooks');

            Integer totalBooks = borrowedBooks.size();
            
            borrowedBooksMap.put(libraryName, totalBooks);
        }
        return borrowedBooksMap;

    }
}
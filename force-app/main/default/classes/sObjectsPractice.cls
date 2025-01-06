public with sharing class sObjectsPractice {
    public List<Contact> initializeContactsList() {
        List<Contact> contacts = new List<Contact>();
        contacts.add(new Contact(FirstName = 'Steven', LastName = 'Smith'));
        contacts.add(new Contact(FirstName = 'Chris', LastName = 'Smith'));
        return contacts;
    }
}
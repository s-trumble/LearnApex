public class ContactService {
    public void updateContactsPhoneByAccount(Id accountId, String newPhoneNumber){
        List<Contact> contacts = [SELECT Id, Phone
                            FROM Contact
                            WHERE AccountId = :accountId];
        
        for(Contact contact : contacts){
            contact.Phone = newPhoneNumber;
        }
        update contacts;
    }
}
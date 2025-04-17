trigger ContactTrigger on Contact (before insert) {
    for(Contact contact : Trigger.new){
    //task 8
        if(contact.Email == null){
            contact.Email = contact.FirstName + '.' + contact.LastName + '@gmail.com';
        }
    
    //task 9
        if(contact.MailingStreet == null || contact.MailingCity == null || contact.MailingPostalCode == null){
            contact.addError('Please fill in the Mailing Street, Mailing City, and Mailing Postal Code fields.');
        }
    }
}
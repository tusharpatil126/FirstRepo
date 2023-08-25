public with sharing class ContactProvider {
    public ContactProvider() {

    }

    @AuraEnabled
    public static string createContactRecords(Contact objcon){
        try {
            
            insert objcon;
            return 'Record created Sucessfully';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static list<Contact> contactList(String accountId){
        try {
            List<Contact> clist = [select id,Name,Email from Contact where accountid =: accountId];
            return clist;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
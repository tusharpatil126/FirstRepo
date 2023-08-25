public class CountNumberOfContactHandler {
    //Insert
    public void numberofContactInsert(list<contact> countlist){
        set<id> idset = new set<id>();
        for(Contact con:countlist){
            if(con.AccountId != null){
                idset.add(con.AccountId);
            } 
        }
        numberofContact(idset);
    }
    //Delete
    public void numberofContactDelete(list<contact> countlist){
        set<id> idset = new set<id>();
        for(Contact con:countlist){
            if(con.AccountId != null){
                idset.add(con.AccountId);
            } 
        }
       numberofContact(idset);
        
    }
    public void numberofContact(set<id> idset){
         list<Account> acclist = [SELECT id,name,Number_of_Contact__c,(SELECT id from contacts) from Account WHERE id in : idset];
        for(Account a:acclist){
            a.Number_of_Contact__c = a.contacts.size();
        }
        update acclist;
        
    }
    
    

}
public class AccounttoContactPhoneUpdateHandler {
    
    public void accToconPhoneUpdate(list<Account> acclist){
        list<Contact> conlist = new list<Contact>();
        set<id> idset = new set<id>();
        for(Account ac:acclist){
            idset.add(ac.Id);
        }
        list<Account> alist = [select id,name,phone,(select id,phone from contacts) from Account where id in :idset];
        for(Account a:alist){
            for(Contact con:a.contacts){
           	con.Phone = a.Phone;
            con.AccountId = a.id;
            conlist.add(con); 
            }
            
        }
        update conlist;
        
    }

}
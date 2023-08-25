//contact to account phone
public class ContacttoAccountPhoneUpdateHandler {
    
    public void conToAccPhoneUpdate(list<contact> conlist){
        list<Account> aclist = new list<Account>();
        for(Contact con:conlist){
            Account acc = new Account();
                    acc.Phone = con.phone;
               	    acc.Id = con.AccountId;
                    aclist.add(acc);
        }
        update aclist;
        
    }

}
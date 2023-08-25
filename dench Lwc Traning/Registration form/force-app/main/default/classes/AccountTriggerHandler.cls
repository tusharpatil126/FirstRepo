public class AccountTriggerHandler {
    
    public void accTrigger(list<Account> acclist){
        
        for(Account acc:acclist){
            if(acc.Industry != null && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }
        }
    }

}
public class AccountQueueable implements Queueable {
    
    public void execute(QueueableContext qc){
        list<Account> accountlist = [select id,Active__c from Account];
        for(Account acc:accountlist){
            if(acc.Active__c == 'No'){
                acc.Active__c = 'Yes';
            }
        }
        try{
            update accountlist;
        }
        catch(Exception e){
            
        }
        
    }

}
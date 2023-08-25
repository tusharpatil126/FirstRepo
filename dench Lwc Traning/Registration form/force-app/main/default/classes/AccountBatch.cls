//write batch class on Account all Active becomes no

public class AccountBatch implements database.batchable<sObject>,database.stateful{
    public integer i = 0;
    public set<id> sucessids = new set<id>();
    public set<id> failids = new set<id>();
    public database.QueryLocator start(database.BatchableContext bc){
        return database.getQueryLocator('select id,name,Active__c from Account');
    }
    public void Execute(database.BatchableContext bc,list<Account> accounts){
        for(Account acc:accounts){
            acc.Active__c = 'No';
        }
        i++;
        database.SaveResult[] srResult = database.update(accounts,false);
        for(database.SaveResult sr:srResult){
            if(sr.isSuccess()){
                sucessids.add(sr.id);
            }
            else{
                failids.add(sr.id);
            }
        }
        
    }
    public void finish(database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        string[] toAddress = new string[]{'kelzarkarrohit.sfdc@gmail.com'};
        mail.setToAddresses(toAddress);
        mail.setSubject('Account record Proceed');
        mail.setPlainTextBody('Account Record Proceed'+i+'Success Records :'+sucessids.size()+'Failed Records :'+failids.size());
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
          
    }

}
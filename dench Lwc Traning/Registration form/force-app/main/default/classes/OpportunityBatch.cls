public class OpportunityBatch implements database.batchable<sObject>,database.stateful{
   public integer i = 0;
   public set<id> passedRecordIds = new set<id>();
   public set<id> failedRecordIds = new set<id>();
   public  database.QueryLocator start(database.BatchableContext bc){
        string query = 'select id,closeDate from opportunity';
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc,list<Opportunity> opplist){
        for(Opportunity opp:opplist){
            opp.closeDate = date.today()-1;
        }  
        i++;
        database.SaveResult[] srResult= database.update(opplist,false);
        for(database.SaveResult sr:srResult){
            if(sr.isSuccess()){
                passedRecordIds.add(sr.id);
            }
            else
            {
                failedRecordIds.add(sr.id);
            }
        }
    }
    public void finish(database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new string[]{'rohitkelzarkarsfdc@gmail.com'};
        mail.setToAddresses(toAddress);
        mail.setSubject('Opportunity Record Processed');
        mail.setPlainTextBody('Opportunity Record Processed : '+i+ 'Opportunity Record Passesd :'+passedRecordIds.size()+ 'Opportunity Records Failed :'+failedRecordIds.size());
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}
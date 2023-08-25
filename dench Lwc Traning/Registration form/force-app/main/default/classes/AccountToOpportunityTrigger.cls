public class AccountToOpportunityTrigger {
    
    public void acctoOppMethod(list<Account> acclist){
        set<id> idset = new set<id>();
        for(Account ac:acclist){
            idset.add(ac.Id);
        }
        list<Opportunity> oplist = new list<Opportunity>();
        list<Opportunity> opplist =[select Accountid,name,StageName,createdDate from Opportunity where Accountid =: idset];
        DateTime days30 = system.now()-30;
        for(Opportunity op:opplist){
            if(op.createdDate < days30 && op.StageName != 'Close Won'){
                op.stageName = 'close lost';
                oplist.add(op);
            }
        }
        update oplist;
    }

}
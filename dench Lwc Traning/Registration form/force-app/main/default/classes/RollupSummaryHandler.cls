public class RollupSummaryHandler {
    public void countNumberofOpportunity(list<Opportunity> oplist){
        set<id> idset = new set<id>();
        for(Opportunity opp:oplist){
            if(opp.accountid != null){
               idset.add(opp.AccountId); 
            }
        }
        
        list<Account> acclist = [select id,name,Number_of_Opportunity__c,CalCulate_Opportunity__c,(select id,name,StageName,CloseDate,Amount__c from Opportunities) from Account where id in :idset];
        
        for(Account a:acclist){
            a.Number_of_Opportunity__c = a.Opportunities.size();
            decimal sum = 0;
            for(opportunity o:a.Opportunities){
               sum = sum + o.Amount__c; 
                system.debug('Sum'+sum);
            }
            
            a.CalCulate_Opportunity__c = sum;
        }
        
        update acclist;
    }
    
}
public class OpportunityTriggerHandler {
    
    public void oppTrigger(list<Opportunity> opplist){
        
        for(Opportunity opp:opplist){
            if(opp.Amount != null && opp.Amount >100000){
                opp.Description = 'Hot Opportunity';
            }
        }
    }

}
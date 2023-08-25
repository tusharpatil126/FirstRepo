//Write a trigger on the Account when the Account is updated check all opportunities related to the account. 
//Update all Opportunities Stage to close lost if an opportunity created date is greater than 30 days from
// today and stage not equal to close won.

trigger AccountToOpportunity on Account (After update) {
    AccountToOpportunityTrigger ato = new AccountToOpportunityTrigger();
    if(trigger.isAfter && trigger.isUpdate){
        ato.acctoOppMethod(trigger.new);
        
    }

}
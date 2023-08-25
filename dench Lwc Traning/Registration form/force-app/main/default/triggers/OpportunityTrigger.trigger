/* Upon Opportunity Creation if Amount is not null and is greater than 100000 then
populate ‘Hot Opportunity’ in description field.
*/

trigger OpportunityTrigger on Opportunity (before insert) {
    OpportunityTriggerHandler opth = new OpportunityTriggerHandler();
    if(trigger.isBefore && trigger.isInsert){
       opth.oppTrigger(trigger.new);
    }

}
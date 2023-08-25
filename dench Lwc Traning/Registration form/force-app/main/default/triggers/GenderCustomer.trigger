//Gender=Male-->Mr.    Female-->Miss.
trigger GenderCustomer on Customer__c (before insert) {
    GenderCustomerHandler gh = new GenderCustomerHandler();
    if(trigger.isBefore && trigger.isInsert){
        gh.GenderCustomerHandlerMethod(trigger.new);
    }

}
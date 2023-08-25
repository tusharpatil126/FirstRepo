trigger CaseTrigger on Case (before insert) {
    CaseTriggerHandler ch = new CaseTriggerHandler();
    if(trigger.isBefore && trigger.isInsert){
        ch.casetriggerHandlerMethod(trigger.new);
    }

}
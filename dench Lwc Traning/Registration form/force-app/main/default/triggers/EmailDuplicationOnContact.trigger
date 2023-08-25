// Email duplication trigger

trigger EmailDuplicationOnContact on Contact (before insert,before update) {
    EmailDuplicationOnContactHandler eh = new EmailDuplicationOnContactHandler();
    if(trigger.isBefore && trigger.isInsert){
        eh.duplicateEmail(trigger.new);
    }
    

}
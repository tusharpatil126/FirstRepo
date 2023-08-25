//Simple validation
trigger SimpleValidationOnAccount on Account (before insert,before update) {

    SimpleValidationOnAccountHandler sh = new SimpleValidationOnAccountHandler();
    if(trigger.isBefore && trigger.isInsert){
        sh.validationMethod(trigger.new);
    }
    
}
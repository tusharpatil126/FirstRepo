trigger AccountDuplication on Account (before insert) {
    AccountDuplicationHandler ah = new AccountDuplicationHandler();
    if(trigger.isBefore && trigger.isInsert){
        ah.accountDuplicationHandlerMethod(trigger.new);
    }

}
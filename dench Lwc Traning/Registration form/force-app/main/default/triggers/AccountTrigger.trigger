/*Upon Account Creation if Industry is not null and having value as ‘Media’ then
populate Rating as Hot.*/

trigger AccountTrigger on Account (before insert) {
    AccountTriggerHandler ath = new AccountTriggerHandler();
    if(trigger.isBefore && trigger.isInsert){
        
        ath.accTrigger(trigger.new);
    }

}
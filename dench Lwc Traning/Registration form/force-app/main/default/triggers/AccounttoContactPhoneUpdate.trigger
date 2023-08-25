trigger AccounttoContactPhoneUpdate on Account (After insert,After update) {
    
    AccounttoContactPhoneUpdateHandler ah = new AccounttoContactPhoneUpdateHandler();
    if(trigger.isAfter && trigger.isupdate){
        ah.accToconPhoneUpdate(trigger.new);
    }
    

}
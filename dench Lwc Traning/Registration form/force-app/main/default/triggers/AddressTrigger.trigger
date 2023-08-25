//Write a trigger on Account, when an account is inserted, automatically account billing address 
//should populate into the account shipping address.

trigger AddressTrigger on Account (before insert) {
    AddressApexTrigger aat = new AddressApexTrigger();
    if(trigger.isBefore && trigger.isInsert){
        aat.triggerMethod(trigger.new);
    }

}
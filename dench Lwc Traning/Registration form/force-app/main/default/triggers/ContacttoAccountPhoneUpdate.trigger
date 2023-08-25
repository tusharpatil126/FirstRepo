//contact to account phone
trigger ContacttoAccountPhoneUpdate on Contact (After insert,After Update) {
    
    ContacttoAccountPhoneUpdateHandler ach = new ContacttoAccountPhoneUpdateHandler();
    if(trigger.isAfter && trigger.isUpdate){
        ach.conToAccPhoneUpdate(trigger.new);
    }

}
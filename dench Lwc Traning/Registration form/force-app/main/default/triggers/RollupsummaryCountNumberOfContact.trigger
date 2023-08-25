trigger RollupsummaryCountNumberOfContact on Contact (After insert,After delete) {
    
    CountNumberOfContactHandler ch = new CountNumberOfContactHandler();
    if(trigger.isAfter && trigger.isInsert){
        ch.numberofContactInsert(trigger.new);  
    }
    if(trigger.isAfter && trigger.isDelete){
        ch.numberofContactDelete(trigger.old);
    }

}
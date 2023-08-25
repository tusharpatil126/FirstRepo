trigger RollupSummary on Opportunity (after insert,after update) {
    RollupSummaryHandler rh = new RollupSummaryHandler();
    if(trigger.isAfter && trigger.isInsert){
        rh.countNumberofOpportunity(trigger.new);
    }
}
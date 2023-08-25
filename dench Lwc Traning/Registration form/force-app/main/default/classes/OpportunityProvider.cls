public with sharing class OpportunityProvider {
    public OpportunityProvider() {

    }
    @AuraEnabled(cacheable = true)
    public static List<Opportunity> oppoDataCall(){
        try {
            return [select id,name,CloseDate,StageName from Opportunity];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static List<Opportunity> oppoList(String accountId){
        try {
            list<Opportunity> oplist = [select id,Name,StageName from Opportunity where accountid =: accountId];
            return oplist;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
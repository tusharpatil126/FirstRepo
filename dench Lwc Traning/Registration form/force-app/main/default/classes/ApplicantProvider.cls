public with sharing class ApplicantProvider {
    public ApplicantProvider() {

    }
    @AuraEnabled
    public static void recordCreationOnAppicantObj(Applicant__c objApplicant){
        try {
            insert objApplicant;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
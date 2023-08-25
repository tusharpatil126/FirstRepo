public with sharing class SalaryPageProvider {
    public SalaryPageProvider() {

    }

    @AuraEnabled
    public static string createRecordOnSalaryPage(Salary_Page__c objsp){
        try {
            insert objsp;
            return 'Record Created Sucessfully...!!!';
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable = true)
    public static string updateRecordOnSalaryPage(Salary_Page__c objsp){
        try {
            if (objsp != null) {
                Database.update(objsp,false);
                return 'Record Updated Sucessfully...!!!';
                
            }else {
                return 'Oops Something Went Wrong...!!!';
            }
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}
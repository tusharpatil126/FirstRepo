public with sharing class AccountProvider {
    public AccountProvider() {
    

    }
   @AuraEnabled
   public static string createAccountRecord(Account objAcc){
    try {
        insert objAcc;
        return 'Record created Sucessfully...!!!';
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }

   @AuraEnabled
   public static Account searchAccount(Account objAcc){
    try {
       if(objAcc != null){
        return ([select Id,Name,Type,Rating,SLA__c from Account where Name=:objAcc.Name LIMIT 1]);
       }else {
           return null;
       }
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }

   @AuraEnabled
   public static string updateAccount(Account objAcc){
    try {
        if(objAcc != null){
            Database.update(objAcc,false);
            return 'Record Updated Sucessfully...!!!';
        }else {
            return 'Something Went Wrong...!!!';
        }
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }

   @AuraEnabled
   public static string deleteAccount(Account objAcc){
    try {
        if (objAcc != null) {
            delete objAcc;
            return 'Record Deleted Sucessfully...!!!';
        }else {
            return 'Locha...Something Went Wrong...!!!';
        }
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }

   @AuraEnabled
   public static list<Account> getAllAccountsType(String accType){
    try {
        if(String.isNotBlank(accType)){
           return ([select Id,Name,Type,SLA__c from Account WHERE Type =: accType]);
        }else {
            {
                return null;
            }
        }
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }
   @AuraEnabled
   public static string deleteSelectedAccounts(List<Id> accIdList){
    try {
        if(!accIdList.isEmpty()){
            delete ([select id from Account where Id IN: accIdList ]);
            return 'Selected Records have been deleted sucessfully...!!!';
        }else {
            return 'There is no records are selected';
        }
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }
   }


 }
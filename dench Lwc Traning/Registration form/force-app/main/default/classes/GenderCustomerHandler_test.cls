@isTest
public class GenderCustomerHandler_test {
    
    @Testsetup public static void createData(){
        Customer__c cus = new Customer__c();
        cus.Name = 'Rohit';
        cus.Gender__c = 'Male';
        insert cus;
        
         Customer__c cus1 = new Customer__c();
        cus1.Name = 'Rani';
        cus1.Gender__c = 'Female';
        insert cus1;
        
    }
    @isTest
    public static void customergenderMaleMethod(){
        customer__c c = [select id,Name,Gender__c from customer__c where  Gender__c = 'Male'];
        system.assertEquals('Male',c.Gender__c);
         customer__c c1 = [select id,Name,Gender__c from customer__c where  Gender__c = 'Female'];
        system.assertEquals('Female', c1.Gender__c);
    }
  
}
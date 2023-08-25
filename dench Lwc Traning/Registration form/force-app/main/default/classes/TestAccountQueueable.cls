@isTest
public class TestAccountQueueable {
    
    @TestSetup public static void testCreateAccountQueueableData(){
        list<Account> acclist = new list<Account>();
        for(integer i=0;i<=50;i++){
            Account acc = new Account();
            acc.Name = 'Account '+i;
            acc.Active__c = 'No';
            acclist.add(acc);
        }
        insert acclist;
    }
    @isTest public static void testAccountQueueable(){
        list<Account> aclist = [select id,Active__c from Account];
        test.startTest();
        system.enqueueJob(new AccountQueueable());
        test.stopTest();
        Account ac = [select id,Active__c from Account LIMIT 1];
        system.assertEquals('Yes', ac.Active__c);
    }

}
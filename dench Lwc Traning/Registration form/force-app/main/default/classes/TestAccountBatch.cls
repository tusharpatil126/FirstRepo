@isTest
public class TestAccountBatch {
    @TestSetup public static void createData(){
        list<Account> aclist = new list<Account>();
        For(integer i=0;i<50;i++){
            Account acc = new Account();
            acc.name = 'Rohit';
            acc.Active__c = 'No';
            aclist.add(acc);
        }
        insert aclist;
    }
    @isTest
    public static void testMethod1(){
        list<Account> aclist = [select id,Active__c from Account];
        test.startTest();
        database.executeBatch(new AccountBatch());
        test.stopTest();
        Account ac = [select id,Active__c from Account LIMIT 1];
        system.assertEquals('No', ac.Active__c);
       // Account ac = [select id,name,Active__c from Account where Active__c='Yes'];
       // system.assertEquals(50, [select count() from Account where Active__c = 'No']);
    }

}
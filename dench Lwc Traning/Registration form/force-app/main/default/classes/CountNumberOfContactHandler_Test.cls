@isTest
public class CountNumberOfContactHandler_Test {
    @TestSetup public static void createData(){
        Account acc = new Account();
        acc.Name = 'Test';
        acc.Active__c = 'yes';
        insert acc;
        
        Account acc1 = new Account();
        acc1.Name = 'Test1';
        acc1.Active__c = 'yes';
        insert acc1;
        
        Contact con = new contact();
        con.lastname = 'testcontact1';
        con.AccountId = acc.id;
        insert con;
        
       
    }
    @isTest
    public static void numberofContactInsert_test(){
        Account acc = [SELECT id,name,Number_of_Contact__c from Account where name = 'test'];
        system.assertEquals(1,acc.Number_of_Contact__c);
    }
    @isTest
    public static void numberofContactDelete_test(){
        contact con = [select id,accountid,lastname from contact where lastname = 'testcontact1'];
       // Account acc1 = [select id,name from account where name = 'test1'];
       // Account acc = [select id,name from account where name = 'test'];
       //	con.AccountId = acc.Id;
        delete con;
        Account acc = [select id,name,Number_of_Contact__c from account where name = 'test'];
        //Account acc2 = [select id,name from account where name = 'test1'];
        system.assertEquals(0, acc.Number_of_Contact__c);
        
        
           }
    
    
 }
@isTest
public class TestAccounttoContactPhoneUpdateHandler {

    @TestSetup static void createDataTest(){
        Account acc = new Account();
        acc.Name = 'Rohit';
        acc.Phone = '9876543210';
        insert acc;
        
        contact con = new contact();
        con.LastName = 'xyz';
        con.AccountId = acc.Id;
        insert con;
    }
    
    @isTest static void testAcctoConPh(){
        Account acc = [select id,name,phone from Account where phone = '9876543210'];
        update acc;
        Account acc1 = [select id,name,phone from Account where phone = '9876543210'];
        system.assertEquals('9876543210', acc1.Phone);
    }
    
}
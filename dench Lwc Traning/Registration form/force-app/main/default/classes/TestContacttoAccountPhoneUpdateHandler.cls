@isTest
public class TestContacttoAccountPhoneUpdateHandler {
    
    @TestSetup static void createDataInContact(){
        
        Account acc = new Account();
        acc.Name = 'abc';
        acc.Phone = '9876543210';
        insert acc;
        
        Contact con = new Contact();
        con.LastName = 'xyz';
        con.Phone = '9878909800';
        con.AccountId = acc.Id;
        insert con;
            
    }
    @isTest static void testConToAccPhone(){
        //Account acc = [select id,phone from Account where phone = '9876543210'];
        contact con = [select id,accountid,phone from contact where phone = '9878909800'];
        update con;
        //Account acc1 = [select id,phone from Account where phone = '9876543210'];
        contact con1 = [select id,accountid,phone from contact where phone = '9878909800'];
        
        system.assertEquals('9878909800',con1.phone);
    }

}
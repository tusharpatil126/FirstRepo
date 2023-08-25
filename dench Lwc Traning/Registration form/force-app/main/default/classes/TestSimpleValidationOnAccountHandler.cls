@isTest
public class TestSimpleValidationOnAccountHandler {
    @isTest static void createData(){
        Account acc = new Account();
        acc.Name = 'Rahul';
       // acc.Phone = '9876543210';
        //insert acc;
        
        test.startTest();
        database.SaveResult result =  database.insert(acc,false);
        test.stopTest();
        
        
        system.assert(!result.isSuccess());
        system.assert(result.getErrors().size() > 0);
        system.assertEquals('Please Enter Phone Number...', result.getErrors()[0].getMessage());
        
        
    }
    
   /* @isTest
    public static void testValidation(){
        Account ac = [select id,name,phone from Account where phone = '9876543210'];
        system.assertEquals('Please Enter Phone Number...', ac.phone);
        
    }*/

}
@isTest
public class TestEmailDuplicationOnContactHandler {

    @isTest static void createData(){
        contact con = new contact();
        con.LastName = 'Rohit';
        
        test.startTest();
        database.SaveResult result = database.insert(con,false);
        test.stopTest();   
        system.assert(!result.isSuccess());
        system.assert(result.getErrors().size()>0);
        system.assertEquals('Duplicate Email is Found...', result.getErrors()[0].getMessage());
    }
   
}
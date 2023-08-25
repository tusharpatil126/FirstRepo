@isTest
public class TestValidationTriggerOnCaseHandler {

    @isTest static void validationDataCreate(){
        case c = new case();
        c.Status = 'New';
        c.Origin = 'Web';
        
        test.startTest();
        database.SaveResult result = database.insert(c, false);
        test.stopTest();
        
        system.assert(!result.isSuccess());
        system.assert(result.getErrors().size() > 0);
        system.assertEquals('Web Name cannot be Empty.', result.getErrors()[0].getMessage());
    }
}
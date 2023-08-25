@isTest
public class CaseTriggerHandler_test {

    @testsetup public static void createData(){
        case ca = new case();
        ca.Origin = 'web';
        ca.Subject = 'test cases';
        ca.Priority = 'high';
        ca.Status = 'new';
        insert ca;
    }
    @isTest
    public static void caseMethod(){
        case c = [select id,Origin,Subject,Priority,Status from case where subject = 'test cases'];
        system.assertEquals('High', c.Priority);
    }
}
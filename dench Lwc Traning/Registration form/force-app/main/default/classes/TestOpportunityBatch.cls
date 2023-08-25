@isTest
public class TestOpportunityBatch {
    @TestSetup public static void createOppoBatchTest(){
        list<Opportunity> opplist = new list<Opportunity>();
        for(integer i=0;i<200;i++){
            Opportunity opp = new Opportunity();
            opp.CloseDate = date.today()-1;
            opp.Name = 'abc';
            opp.StageName = 'Prospecting';
            opplist.add(opp);
        }
        insert opplist;
    }
    @isTest
    public static void testMethod1(){
        list<Opportunity> opplist = [select id,CloseDate from Opportunity];
        test.startTest();
        database.executeBatch(new OpportunityBatch());
        test.stopTest();
        Opportunity op = [select id,CloseDate from Opportunity LIMIT 1];
        system.assertEquals(date.today()-1,op.CloseDate);
        
        //system.assertEquals(200,[select count() from Opportunity]);
    }

}
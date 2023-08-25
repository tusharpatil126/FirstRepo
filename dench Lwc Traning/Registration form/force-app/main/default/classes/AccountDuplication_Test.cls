@isTest
public class AccountDuplication_Test {
   @TestSetup public static void createData(){
        Account ac = new Account();
        ac.name = 'Rohit';
        insert ac;
    }
    @isTest
    public static void accountDuplicationHandlerTest(){
        Account a = [select id,name from Account where name = 'Rohit'];
        system.assertEquals('Rohit', a.name);
    }

}
@isTest
public class TaskUtilTest {
    
    @isTest static void testTaskPriority(){
        
        string pri = TaskUtil.getTaskPriority('NY');
        system.assertEquals('Normal', pri);
    }
    
    @isTest static void testTaskHighPriority(){
        string pri = TaskUtil.getTaskPriority('CA');
        system.assertEquals('High', pri);
    }
    @isTest static void testTaskNullPriority(){
        string pri = TaskUtil.getTaskPriority('abc');
        system.assertEquals(null, pri);
        //system.assertEquals(expected, actual)
    }

}
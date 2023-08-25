public class CaseTriggerHandler {
    public void casetriggerHandlerMethod(list<case> caselist){
        
        for(Case ca:caselist){
            if(ca.Origin == 'web'){
                ca.Priority = 'high';
                
            }
        }
        
    }

}
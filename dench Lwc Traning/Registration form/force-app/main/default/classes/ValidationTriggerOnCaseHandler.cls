/* Scenario :: Write a trigger on Case if case Origin is "Web" and 
				the field Web Name is empty then throw an error message "Web Name cannot be Empty. */


public class ValidationTriggerOnCaseHandler {
    
    public void validationOnCase(list<case> calist){
        
        for(Case c:calist){
            
            if(c.Origin == 'Web' && c.SuppliedName == null){
                c.SuppliedName.adderror('Web Name cannot be Empty.');
            }
        }
        
    }

}
public class GenderCustomerHandler {
    public void GenderCustomerHandlerMethod(list<Customer__c> custlist){
        
        for(Customer__c cus:custlist){
            if(cus.Gender__c == 'Male'){
           cus.Name = 'Mr.'+cus.Name;
            }
            else if(cus.Gender__c == 'Female'){
                cus.Name = 'Miss'+ cus.Name;
            }
        }
        
    }

}
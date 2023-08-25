public class SimpleValidationOnAccountHandler {
    
    public void validationMethod(list<Account> acclist){
        
        for(Account a:acclist){
            if(a.phone == null){
               a.phone.adderror('Please Enter Phone Number...');
            }
        }
        
    }

}
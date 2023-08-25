public class AddressApexTrigger {
    
    public void triggerMethod(list<Account> acclist){
        
        for(Account ac:acclist){
            if(ac.BillingCountry != null){
                ac.ShippingCountry = ac.BillingCountry;
            }
            if(ac.BillingState != null){
                ac.ShippingState = ac.BillingState;
            }
            if(ac.BillingCity != null){
                ac.ShippingCity = ac.BillingCity;
            }
            if(ac.BillingStreet != null){
                ac.ShippingStreet = ac.BillingStreet;
            }
            if(ac.BillingPostalCode != null){
                ac.ShippingPostalCode = ac.BillingPostalCode;
            }
        }
        
    }

}
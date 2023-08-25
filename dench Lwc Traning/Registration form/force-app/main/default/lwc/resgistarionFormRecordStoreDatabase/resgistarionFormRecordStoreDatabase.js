import { LightningElement } from 'lwc';
import createAccRecord from "@salesforce/apex/AccountProvider.createAccRecord";
export default class ResgistarionFormRecordStoreDatabase extends LightningElement {
    Accountobj = {'sobjectType' : 'Account'}
    createAccountRecord(){
        
       this.Accountobj.Name = this.template.querySelector('lightning-input[data-formfield="accountName"]').value;

       createAccRecord({accObject : this.Accountobj})
       .then((result) => {
        this.result = result;
        this.error = undefined;
    })
    .catch((error) => {
        this.error = error;
        this.result = undefined;
    });


       }
    
}
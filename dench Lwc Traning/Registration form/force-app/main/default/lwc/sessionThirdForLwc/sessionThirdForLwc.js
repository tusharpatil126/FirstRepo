import { LightningElement } from 'lwc';
import createAccountRecord from '@salesforce/apex/AccountProvider.createAccountRecord';
export default class SessionThirdForLwc extends LightningElement {

    objAccount = {'sobjectType' :'Account'}

    saveButtonHandler(){

      this.objAccount.Name = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value;
      this.objAccount.Type = this.template.querySelector('lightning-input[data-fromfield="accountType"]').value;

      createAccountRecord({objAcc : this.objAccount})
      .then((result)=>{
        this.result = result;
        this.error = undefined;
      })
      .catch((error)=>{
        this.error = error;
        this.result = undefined;

      });

    }

}
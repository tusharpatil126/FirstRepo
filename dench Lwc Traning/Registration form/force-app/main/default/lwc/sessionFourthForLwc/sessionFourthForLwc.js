import { LightningElement } from 'lwc';
import createAccountRecord from '@salesforce/apex/AccountProvider.createAccountRecord';
import searchAccount from '@salesforce/apex/AccountProvider.searchAccount';
import updateAccount from '@salesforce/apex/AccountProvider.updateAccount';
import deleteAccount from '@salesforce/apex/AccountProvider.deleteAccount';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class SessionFourthForLwc extends LightningElement {
   
    accountObject = {'sobjectType':'Account'} 
    showSpinerFlag = false
    createAccountHandler(){
         this.accountObject.Name = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value
         this.accountObject.Type = this.template.querySelector('lightning-input[data-fromfield="accountType"]').value
         this.accountObject.Rating = this.template.querySelector('lightning-input[data-fromfield="accountRating"]').value
         this.accountObject.SLA__c = this.template.querySelector('lightning-input[data-fromfield="accountSLA"]').value
        
         createAccountRecord({objAcc : this.accountObject})
         .then((result)=>{
            this.result = result;
            this.error = undefined;
         })
         .catch((error)=>{
            this.error = error;
            this.result = undefined;
         });

    }

    searchAccountHandler(){

      this.showSpinerFlag = true

        this.accountObject.Name = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value

        searchAccount({objAcc : this.accountObject})
        .then((result)=>{
            this.accountObject = result;
            this.error = undefined;

            this.showSpinerFlag = false
         })
         .catch((error)=>{
            this.error = error;
            this.result = undefined;
         });

    }
    updateAccountHandler(){
        this.accountObject.Name = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value;
        this.accountObject.Type = this.template.querySelector('lightning-input[data-fromfield="accountType"]').value;
        this.accountObject.Rating = this.template.querySelector('lightning-input[data-fromfield="accountRating"]').value;
        this.accountObject.SLA__c = this.template.querySelector('lightning-input[data-fromfield="accountSLA"]').value;

        updateAccount({objAcc : this.accountObject})
        .then((result)=>{
         this.accountObject = result;
         this.showSuccessToast();
        })
        .catch((error)=>{
         this.error = error;
         this.result = undefined;
         console.log('Message :'+this.error);
        });
    }

    deleteAccountHandler(){
       this.accountObject.Name = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value;

       deleteAccount({objAcc : this.accountObject})
       .then((result)=>{
         this.accountObject = result;
         this.showSuccessToast();
       })
       .catch((error)=>{
         this.error = error;
         this.result = undefined;
       });

    }

    showSuccessToast(){
      const eve = new ShowToastEvent({
         title : 'Your Opeartion perform Sucessfully',
         message : this.result,
         variant : 'success',
         mode : 'dismissa',
    })
    this.dispatchEvent(eve);
  }
}
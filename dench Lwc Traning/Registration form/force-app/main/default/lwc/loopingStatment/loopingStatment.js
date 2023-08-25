import { LightningElement } from 'lwc';
import getAllAccountsType from '@salesforce/apex/AccountProvider.getAllAccountsType';
export default class LoopingStatment extends LightningElement {

    selectedAccType
    accList
    totalRecords
    showTableFlag = false
    

   get accTypes(){

    return [
        { label : 'Prospect',value : 'Prospect'},
        { label : 'Technology Partner',value : 'Technology Partner'},
        { label : 'Other',value : 'Othwer'},

    ];

    }

    handleAccountTypeChange(event){
        this.selectedAccType = event.detail.value

        getAllAccountsType({accType : this.selectedAccType})
        .then((result)=>{
            this.accList = result;
            this.error = undefined;

    
        this.totalRecords = result.length;

        if(result.length > 0){
            this.showTableFlag = true

        }else{
            this.showTableFlag = false
        }


        })
        .catch((error)=>{
            this.error = error;
            this.result = undefined;
            this.showTableFlag = false
        });
    }
}
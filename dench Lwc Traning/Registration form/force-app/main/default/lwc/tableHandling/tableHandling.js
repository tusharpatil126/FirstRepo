import { LightningElement } from 'lwc';
import getAllAccountsType from '@salesforce/apex/AccountProvider.getAllAccountsType';
import deleteSelectedAccounts from '@salesforce/apex/AccountProvider.deleteSelectedAccounts';
const columns = [
    {label:'Name',fieldName:'Name',editable:true},
    {label:'Type',fieldName:'Type',editable:true},
    {label:'SLA',fieldName:'SLA__c',editable:true},

];

export default class TableHandling extends LightningElement {
draftValues
columns = columns;
selectedType
accList
selectedRecords

get accTypes(){

    return [
        { label : 'Prospect',value : 'Prospect'},
        { label : 'Technology Partner',value : 'Technology Partner'},
    ];

}

handleAccountTypeChange(event){
    this.selectedType = event.detail.value

    getAllAccountsType({accType : this.selectedType})
    .then((result)=>{
        console.log(result)
        this.accList = result;
        this.error = undefined;
    })
    .catch((error)=>{
        console.log(error);
        this.error = error;
        this.result = undefined;
    });
    }

    selectedRecordHandler(event){
       const selectedRows = event.detail.selectedRows;
       console.log(selectedRows);


       let recordsSets = new Set();
       //getting selected record id
       for(let i=0;i<selectedRows.length;i++){
        recordsSets.add(selectedRows[i].Id);
       }

       //coverting to array

         this.selectedRecords = Array.from(recordsSets);

    }

    deleteSelectedRecordHandler(){

        deleteSelectedAccounts({accIdList : this.selectedRecords})
        .then((result)=>{
            this.selectedRecords = result;
            this.error = undefined;
        })
        .catch((error) =>{
            this.error = error;
            this.result = undefined;
        })

    }
}
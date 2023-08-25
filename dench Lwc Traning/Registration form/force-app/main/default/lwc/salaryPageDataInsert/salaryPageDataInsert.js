import { LightningElement } from 'lwc';
import createRecordOnSalaryPage from '@salesforce/apex/SalaryPageProvider.createRecordOnSalaryPage';
import updateRecordOnSalaryPage from '@salesforce/apex/SalaryPageProvider.updateRecordOnSalaryPage';
export default class SalaryPageDataInsert extends LightningElement {

    objSalary = { 'sobjectType' : 'Salary_Page__c'}

    createRecordHandler(){
        this.objSalary.Name = this.template.querySelector('lightning-input[data-formfield="salaryPageName"]').value
        this.objSalary.Email__c = this.template.querySelector('lightning-input[data-formfield="salaryPageEmail"]').value
        createRecordOnSalaryPage({ objsp : this.objSalary})
        .then((result)=>{
            this.result = result;
            this.error = undefined;
        })
        .catch((error)=>{
            this.error = error;
            this.result = undefined;
        });
        
    }

    updateRecordHandler(){
        this.objSalary.Name = this.template.querySelector('lightning-input[data-formfield="salaryPageName"]').value
        this.objSalary.Email__c = this.template.querySelector('lightning-input[data-formfield="salaryPageEmail"]').value

        updateRecordOnSalaryPage({ objsp : this.objSalary})
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
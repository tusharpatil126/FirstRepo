import { LightningElement } from 'lwc';
import recordCreationOnAppicantObj from '@salesforce/apex/ApplicantProvider.recordCreationOnAppicantObj';
export default class ApplicantRegistartionForm extends LightningElement {

    Applicantobj = {'sobjectType' : 'Applicant__c'};

    saveApplicantRecord(){
        this.Applicantobj.First_Name__c = this.template.querySelector('lightning-input[data-formfield="applicantFirstName"]').value;
        this.Applicantobj.Last_Name__c = this.template.querySelector('lightning-input[data-formfield="applicantLastName"]').value;
        

        recordCreationOnAppicantObj({objApplicant : this.Applicantobj})
        .then((result) => {
            this.result = result;
            this.error = undefined;
        })
        .catch((error) => {
            this.error = error;
            this.result = undefined;
        });
    }

   get options(){
        return [
            { label : 'Male', value : 'Male'},
            { label : 'Female', value : 'Female' },
            { label : 'Transgender', value : 'Transgender'}
        ];
        
    }
    applicantRecordhandleChange(event){
        this.Applicantobj.Gender__c = event.detail.value;

    }

    

}
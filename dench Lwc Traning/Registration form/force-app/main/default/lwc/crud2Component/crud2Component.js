import { LightningElement } from 'lwc';
import createContactRecords from '@salesforce/apex/ContactProvider.createContactRecords';

export default class Crud2Component extends LightningElement {

        contactobject = {'sobjectType' : 'Contact' }

    createRecordHandler(){

       this.contactobject.FirstName = this.template.querySelector('lightning-input[data-formfield="contactFirstName"]').value
       this.contactobject.LastName  = this.template.querySelector('lightning-input[data-formfield="contactLastName"]').value
       this.contactobject.Phone     = this.template.querySelector('lightning-input[data-formfield="contactPhone"]').value
       this.contactobject.Email     = this.template.querySelector('lightning-input[data-formfield="contactEmail"]').value

       createContactRecords({ objcon : this.contactobject})
        .then((result) => {
          this.result = result;
          this.error = undefined;
          
      })
      .catch((error) => {
          this.error = error;
          this.result = undefined;
          
      });

    }
    SearchRecordHandler(){
        console.log('Search js Method');
    }
    updateRecordHandler(){
        console.log('Update js Method');
    }
    deleteRecordHandler(){
        console.log('Delete js Method')
    }
}
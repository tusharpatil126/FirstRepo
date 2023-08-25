import { LightningElement } from 'lwc';

export default class SessionSecondForLwc extends LightningElement {

    firstName
    lastName
    email
    phone
    dob

     showName(){
        
       var inputFields = this.template.querySelectorAll("lightning-input");
       inputFields.forEach(elemant=>{
        if(elemant.name == 'firstName'){
            this.firstName = elemant.value;
        }
        if(elemant.name == 'lastName'){
            this.lastName = elemant.value;
        }
        if(elemant.name == 'email'){
            this.email = elemant.value;
        }
        if(elemant.name == 'phone'){
            this.phone = elemant.value;
        }
        if(elemant.name == 'dob'){
            this.dob = elemant.value;
        }
       });
     }

     
}
import { LightningElement } from 'lwc';

export default class RegistrationForm extends LightningElement {
    
    firstName
    lastName
    email
    phone
    dob
    gender

    myRegistration(){
       var inputField = this.template.querySelectorAll('lightning-input');
       inputField.forEach(elemant =>{
        if(elemant.name == 'firstName'){
            this.firstName = elemant.value
        }
        if(elemant.name == 'lastName'){
            this.lastName = elemant.value
        }
        if(elemant.name == 'email'){
            this.email = elemant.value
        }
        if(elemant.name == 'phone'){
            this.phone = elemant.value
        }
        if(elemant.name == 'dob'){
            this.dob = elemant.value
        }
        if(elemant.name == 'gender'){
            this.gender = elemant.value
        }

       });
    }


   
}
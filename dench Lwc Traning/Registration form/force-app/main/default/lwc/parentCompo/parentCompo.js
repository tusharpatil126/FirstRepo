import { LightningElement,track } from 'lwc';

export default class ParentCompo extends LightningElement {

    salary = 100
    employeeName = 'Pushpa'

    car={
        'Make' : 'Honda',
        'Model': 'City'
    }

    @track objAccount = {'sobjectType':'Account'}

    sendAccountHandler(){
          this.objAccount.Name = this.template.querySelector('lightning-input[data-fromfield="accName"]').value;
    }
}
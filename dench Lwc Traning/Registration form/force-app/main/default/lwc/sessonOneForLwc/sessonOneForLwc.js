import { LightningElement } from 'lwc';

export default class SessonOneForLwc extends LightningElement {

    name 
    firstName = 'Bunty'
    lastName = 'Monty'
    phoneNumber = 8989765400
    salaryAmount = 25000

    Account = {
        Name : 'VR Mall',
        Type : 'Prospect',
        SLA__c : 'Gold',
        Rating : 'Hot'
    }

    empList = ["Ram"
    ,"Sham"
    ,"Laxman"];


}
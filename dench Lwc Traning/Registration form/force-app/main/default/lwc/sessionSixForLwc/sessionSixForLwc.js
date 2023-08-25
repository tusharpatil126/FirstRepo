import { LightningElement } from 'lwc';
import getAllAccountsType from '@salesforce/apex/AccountProvider.getAllAccountsType';
export default class SessionSixForLwc extends LightningElement {



   get accTypes(){

        return [
            { label : 'Prospect',value : 'Prospect' },
            { label : 'Other',value : 'Other' },
        ];
    }
}
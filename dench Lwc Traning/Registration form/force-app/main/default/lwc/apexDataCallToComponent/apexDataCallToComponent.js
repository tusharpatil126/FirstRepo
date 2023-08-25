import { LightningElement,wire } from 'lwc';
import getAccountRecord from '@salesforce/apex/AccountProvider.getAccountRecord';

export default class ApexDataCallToComponent extends LightningElement {

    @wire(getAccountRecord) accRecord;
}
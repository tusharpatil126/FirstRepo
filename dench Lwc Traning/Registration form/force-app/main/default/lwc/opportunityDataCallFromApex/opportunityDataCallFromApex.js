import { LightningElement,wire } from 'lwc';
import getOpportunityRecordData from '@salesforce/apex/OpportunityProvider.oppoDataCall';
export default class OpportunityDataCallFromApex extends LightningElement {

    @wire(getOpportunityRecordData) gatOppRecData;
}
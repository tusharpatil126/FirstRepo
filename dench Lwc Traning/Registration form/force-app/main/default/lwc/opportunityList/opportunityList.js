import { LightningElement,wire,api } from 'lwc';
import contactList from '@salesforce/apex/ContactProvider.contactList';
import opportunityList from '@salesforce/apex/OpportunityProvider.oppoList';
export default class OpportunityList extends LightningElement {

   @api recordId;
 //  @wire (contactList,{accountId : '$recordId'}) contList;

   @wire (opportunityList,{accountId:'$recordId'}) opolist;
}
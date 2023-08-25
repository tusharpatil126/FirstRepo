import { LightningElement, wire } from 'lwc';
import MYCHANNEL from '@salesforce/messageChannel/AccountDataChannel__c';
import {subscribe,MessageContext,APPLICATION_SCOPE} from 'lightning/messageService';
export default class Chela extends LightningElement {

    @wire(MessageContext)
    context
    receviedName
    connectedCallback(){

        this.receiveDataHandler()

    }
    receiveDataHandler(){

        subscribe(this.context, MYCHANNEL,(message)=>{this.handleMessageHandler(message)},{scope:APPLICATION_SCOPE})
    }

    handleMessageHandler(message){
        this.receviedName = message.accountName.value
    }

}
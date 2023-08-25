import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';
export default class PublisherCompo extends LightningElement {

    accountName
    sendDataHandler(){
        this.accountName = this.template.querySelector('lightning-input[data-fromfield="accountName"]').value;
        pubsub.publish("sendDataHandler",this.accountName);
    }
}
import { LightningElement } from 'lwc';
import pubsub from 'c/pubsub';
export default class SubscriberCompo extends LightningElement {

    receivedData 
    connectedCallback(){
        this.receivedDataHandler();
    }

    receivedDataHandler(){
        pubsub.subscribe("sendDataHandler",(message) =>{
            this.receivedData = message
        })
    }
}
import { LightningElement } from 'lwc';

export default class MallCompo extends LightningElement {

    showPopupModelFlag = false
    showPopupHandler(){
       this.showPopupModelFlag = true
       
    }

    closePopupHandler(event){
       // this.showPopupModelFlag = false

       this.showPopupModelFlag = event.detail;
    }
}
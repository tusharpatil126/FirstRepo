import { LightningElement } from 'lwc';

export default class SessionFiveForLwc extends LightningElement {

    showMessageFlag = false
    showSpinerFlag = false

    searchHandler(){
        this.showSpinerFlag = true
        this.showMessageFlag = true
        this.showSpinerFlag = false

    }

    editHandler(){
        this.showSpinerFlag = true
        this.showMessageFlag = true
        this.showSpinerFlag = false

    }
}
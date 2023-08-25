import { LightningElement } from 'lwc';

export default class ShopCompo extends LightningElement {

    closeButtonHandler(){
        const myShopEvent = new CustomEvent("myshopevent",{detail : false})
        this.dispatchEvent(myShopEvent)
    }
}
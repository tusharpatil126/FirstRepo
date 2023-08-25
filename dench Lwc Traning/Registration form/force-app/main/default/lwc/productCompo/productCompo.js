import { LightningElement } from 'lwc';

export default class ProductCompo extends LightningElement {

    
    callChildJsMethodHandler(){

        this.template.querySelector('c-tax-compo').childTaxMethod();
    }
}
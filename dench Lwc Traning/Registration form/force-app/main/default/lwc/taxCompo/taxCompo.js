import { LightningElement,api } from 'lwc';

export default class TaxCompo extends LightningElement {

    salaryTax = 4000

   @api childTaxMethod(){
        this.salaryTax = 700
    }
}
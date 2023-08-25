import { LightningElement } from 'lwc';

export default class SampleForm extends LightningElement {
    firstName = 'My Name is Rohit'

    myMethod(){
        console.log(this.myMethod2)
    }

    get myMethod2(){
        return "It Edge Pune......"
    }
    
    myName(){
        console.log(this.firstName)
    }
}
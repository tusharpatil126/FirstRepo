import { LightningElement } from 'lwc';

export default class ResetSliderCompo extends LightningElement {

    resetSliderHandler(){
        this.template.querySelector('c-slider-compo').sliderResetChildMethod();
    }
}
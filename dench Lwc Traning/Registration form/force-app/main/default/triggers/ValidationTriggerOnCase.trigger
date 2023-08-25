/* Scenario :: Write a trigger on Case if case Origin is "Web" and 
				the field Web Name is empty then throw an error message "Web Name cannot be Empty. */


trigger ValidationTriggerOnCase on Case (before insert) {
    ValidationTriggerOnCaseHandler vh = new ValidationTriggerOnCaseHandler();
    if(trigger.isBefore && trigger.isInsert){
        vh.validationOnCase(trigger.new);
    }
    

}
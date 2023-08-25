({
    sendDataHandler : function(component, event, helper) {
       var myMessage = component.get("v.myMessage");
       
       const message = {
        accountName:{
            value:myMessage
        }
       }
       component.find("msgChannelID").publish(message);
    }
})

const store={};

const subscribe = (sendDataHandler,callback) =>{
        if(!store[sendDataHandler]){
        store[sendDataHandler] = new Set();
        }
        store[sendDataHandler].add(callback);
};

const unsubscribe = (sendDataHandler,callback) =>{
        if(store[sendDataHandler]){
        store[sendDataHandler].delete(callback);
        }
};

const publish = (sendDataHandler, payLoad) =>{
        if(store[sendDataHandler]){
        store[sendDataHandler].forEach(callback => {
            try{
            callback(payLoad);
            }
            catch(error){
            console.log(error);
            }
});
}
};

export default{
        subscribe,
        unsubscribe,
        publish

}

public class AccountDuplicationHandler {
    
    public void accountDuplicationHandlerMethod(list<Account> acclist){
        list<Account> a = [select id,name from Account];
        list<string> alist = new list<string>();
        for(Account ac:a){
            alist.add(ac.name); 
        }
        for(Account acc:acclist){
             if(acc.Name != null){
            if(alist.contains(acc.Name)){
                acc.Name.adderror('Duplicate Account Not Allow');
            }
           }
        }
        
    }

}